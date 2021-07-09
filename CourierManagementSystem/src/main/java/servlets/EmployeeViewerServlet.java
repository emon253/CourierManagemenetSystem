package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Employee;
import repository.EmployeeRepositoryImpl;
import service.EmployeeService;
import service.EmployeeServiceImpl;

@WebServlet("/employeeViewer")
public class EmployeeViewerServlet extends HttpServlet {
	EmployeeService service = new EmployeeServiceImpl(new EmployeeRepositoryImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<Employee> list = service.findAllEmployees();
			request.setAttribute("employeeList", list);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		//doPost(request, response);
		request.getRequestDispatcher("ViewEmployeeInfo.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	

	}

}
