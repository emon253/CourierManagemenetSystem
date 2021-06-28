package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.TrackControlDto;
import repository.ParcelRequestRepImpl;
import service.ParcelService;
import service.ParcelServiceImpl;

@WebServlet("/trackControl")
public class TrackingParcelControlServlet extends HttpServlet {
private ParcelService service = new ParcelServiceImpl(new ParcelRequestRepImpl());
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("trackingControl.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TrackControlDto trackControl = new TrackControlDto(request.getParameter("pDivision"),
				request.getParameter("pDistrict"), request.getParameter("pSubDistrict"),
				request.getParameter("dDivision"), request.getParameter("dDistrict"),
				request.getParameter("dSubDistrict"), request.getParameter("sessionMsg"), 0);
		try {
			service.saveTrackingInformation(trackControl);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
