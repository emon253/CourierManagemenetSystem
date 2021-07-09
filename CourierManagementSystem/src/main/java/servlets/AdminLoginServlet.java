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

import domain.Employee;
import domain.User;
import dto.LoginDTO;
import repository.EmployeeRepositoryImpl;
import service.EmployeeService;
import service.EmployeeServiceImpl;
import service.ValidationUtil;

@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {
	EmployeeService service = new EmployeeServiceImpl(new EmployeeRepositoryImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("adminlogin.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		var loginDto = new LoginDTO(request.getParameter("email"), request.getParameter("password"));
		var errors = ValidationUtil.getInstance().validate(loginDto);
		if (!errors.isEmpty()) {
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
		}
		try {
			login(loginDto, request);
			response.sendRedirect("adminpanel.jsp");
		} catch (NoSuchAlgorithmException | ClassNotFoundException | UserPrincipalNotFoundException | SQLException e) {
			errors.put("userloginError", "Incorrect user name or Password");
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("adminlogin.jsp").forward(request, response);


		}

	}

	private void login(LoginDTO loginDto, HttpServletRequest request)
			throws NoSuchAlgorithmException, ClassNotFoundException, UserPrincipalNotFoundException, SQLException {
		Employee employee = service.verifyAdmin(loginDto);

		HttpSession oldSession = request.getSession(false);
		if (oldSession != null) {
			oldSession.invalidate();
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("admin", employee);

	}

}
