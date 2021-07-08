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

import domain.Admin;
import dto.AdminDTO;
import repository.AdminRepositoryImpl;
import service.AdminService;
import service.AdminServiceImpl;
import service.ValidationUtil;

@WebServlet("/adminSignup")
public class AdminSignupServlet extends HttpServlet {
	private AdminService service = new AdminServiceImpl(new AdminRepositoryImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("corporateSignup.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminDTO adminDto = new AdminDTO(request.getParameter("id"), request.getParameter("name"),
				request.getParameter("email"), Long.parseLong(request.getParameter("phone")),
				request.getParameter("designation"), request.getParameter("address"), request.getParameter("password"),
				request.getParameter("confirmPassword"));
		Map<String, String> errors = ValidationUtil.getInstance().validate(adminDto);
		HttpSession session = request.getSession();

		if (errors.isEmpty()) {
			try {
				service.saveAdmin(adminDto);
				Admin admin = new Admin();
				admin.setName(adminDto.getName());
				session.setAttribute("admin", admin);
				response.sendRedirect("adminpanel.jsp");

			} catch (NoSuchAlgorithmException | ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

		} else {	
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("corporateSignup.jsp").forward(request, response);
		}
	}

}
