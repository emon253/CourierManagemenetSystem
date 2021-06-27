package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.TrackControlDto;

@WebServlet("/trackControl")
public class TrackingParcelControlServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("trackingControl.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//TrackControlDto trackControl = new TrackControlDto(request.getParameter("pDivision"), request.getParameter("pDistrict"),  request.getParameter("pSubDistrict"),  getServletInfo(), getServletInfo(), getServletInfo(), getServletInfo(), getServletName(), getServletInfo(), 0)
	
	}

}
