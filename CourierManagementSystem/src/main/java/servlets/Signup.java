package servlets;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.UserDTO;
import repository.UserRepositoryImpl;
import service.UserService;
import service.UserServiceImpl;
import service.ValidationUtil;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	private UserService userService = new UserServiceImpl(new UserRepositoryImpl());


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("signup.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDTO userDto = new UserDTO(request.getParameter("name"), request.getParameter("userName"),
				request.getParameter("email"), Long.parseLong(request.getParameter("phone")),
				request.getParameter("address"), request.getParameter("password"),
				request.getParameter("confirmPassword"));
		Map<String, String> errors = ValidationUtil.getInstance().validate(userDto);
		try {
			if (!userDto.getPassword().equals(userDto.getConfirmPassword())) {
				errors.put("passError", "Please enter same password in both password field");
			}
			if (!userService.isEmailExist(userDto.getEmail())) {
				errors.put("emailExistance", "The email is already registerd");
			}
			if (!userService.isUniqueUserName(userDto.getUserName())) {
				errors.put("userExistance", "The user is already exist");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		if (errors.isEmpty()) {

			// session.setAttribute("loginStates", "success");
			session.setAttribute("userName", userDto.getUserName());
			try {
				userService.saveUser(userDto);

				response.sendRedirect("home.jsp");
			} catch (NoSuchAlgorithmException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
	}

}
