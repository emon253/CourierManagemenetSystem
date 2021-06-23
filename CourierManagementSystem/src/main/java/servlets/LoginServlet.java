package servlets;

import java.io.IOException;
import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.User;
import dto.LoginDTO;
import repository.UserRepositoryImpl;
import service.UserService;
import service.UserServiceImpl;
import service.ValidationUtil;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private UserService userService = new UserServiceImpl(new UserRepositoryImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		var loginDto = new LoginDTO(request.getParameter("email"), request.getParameter("password"));
		var errors = ValidationUtil.getInstance().validate(loginDto);
		if (!errors.isEmpty()) {
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		try {
			login(loginDto, request);
			response.sendRedirect("home.jsp");
		} catch (NoSuchAlgorithmException | ClassNotFoundException | UserPrincipalNotFoundException | SQLException e) {
			errors.put("userloginError", "Incorrect user name or Password");
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("/login.jsp").forward(request, response);

		}
	}

	private void login(LoginDTO loginDto, HttpServletRequest request)
			throws NoSuchAlgorithmException, ClassNotFoundException, UserPrincipalNotFoundException, SQLException {
		User user = userService.verifyUser(loginDto);

		HttpSession oldSession = request.getSession(false);
		if (oldSession != null) {
			oldSession.invalidate();
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("userName", user.getUserName());

	}

}
