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

import domain.Employee;
import dto.EmployeeDTO;
import repository.EmployeeRepositoryImpl;
import service.EmployeeService;
import service.EmployeeServiceImpl;
import service.ValidationUtil;

@WebServlet("/adminSignup")
public class AdminSignupServlet extends HttpServlet {
	EmployeeService service = new EmployeeServiceImpl(new EmployeeRepositoryImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("corporateSignup.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmployeeDTO employeeDto = new EmployeeDTO(request.getParameter("id"), request.getParameter("name"),
				request.getParameter("email"), Long.parseLong(request.getParameter("phone")),
				request.getParameter("designation"), request.getParameter("address"), request.getParameter("password"),
				request.getParameter("confirmPassword"));
		Map<String, String> errors = ValidationUtil.getInstance().validate(employeeDto);
		HttpSession session = request.getSession();

		if (errors.isEmpty()) {
			try {
				service.saveAdmin(employeeDto);
				Employee employee = new Employee();
				employee.setName(employeeDto.getName());
				session.setAttribute("admin", employee);
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
