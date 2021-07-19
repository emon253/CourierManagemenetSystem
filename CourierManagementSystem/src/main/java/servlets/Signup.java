package servlets;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.User;
import dto.LoginDTO;
import dto.UserDTO;
import repository.UserRepositoryImpl;
import service.Email;
import service.OTPGenerator;
import service.UserService;
import service.UserServiceImpl;
import service.ValidationUtil;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	private UserService userService = new UserServiceImpl(new UserRepositoryImpl());
	private HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String req = request.getParameter("otp");
		String email = request.getParameter("email");
		session = request.getSession(true);

		if (req.equals("true")) {
			String OTP = OTPGenerator.getInstance().generateOTP();
			try {
				Email.getInstance().sendEmail(OTP, "CMS signup otp verification", email);
				session.setAttribute("otpCode", OTP);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		} else {
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session = request.getSession();
		UserDTO userDto = new UserDTO(request.getParameter("name"), request.getParameter("userName"),
				request.getParameter("email"), Long.parseLong(request.getParameter("phone")),
				request.getParameter("address"), request.getParameter("password"),
				request.getParameter("confirmPassword"));
		String USER_OTP = request.getParameter("otpField");
		String otp = (String) session.getAttribute("otpCode");
		Map<String, String> errors = ValidationUtil.getInstance().validate(userDto);
//		System.out.println("Session otp " + session.getAttribute("otpCode"));
//		System.out.println("User otp " + USER_OTP);
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
			if(USER_OTP == null || otp == null) {
				errors.put("otpMsg", "Please enter otp properly");

			}
			if (!otp.equals(USER_OTP)) {
				errors.put("otpMsg", "Your otp does not matched");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (errors.isEmpty()) {

			// session.setAttribute("loginStates", "success");
			try {
				userService.saveUser(userDto);
				response.sendRedirect("home.jsp");
				session.setAttribute("user", copyUser(userDto));
				session.removeAttribute("otpCode");
			} catch (NoSuchAlgorithmException | ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
	}

	User copyUser(UserDTO userDto) {
		User user = new User();
		user.setName(userDto.getName());
		user.setUserName(userDto.getUserName());
		user.setEmail(userDto.getEmail());
		user.setPhone(userDto.getPhone());
		user.setAddress(userDto.getAddress());
		return user;
	}

}
