package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ParcelRequest;
import domain.ParcelTracking;
import repository.ParcelRequestRepImpl;
import service.ParcelService;
import service.ParcelServiceImpl;

@WebServlet("/TrackParcel")
public class TrackParcelServlet extends HttpServlet {
	private ParcelService parcelService = new ParcelServiceImpl(new ParcelRequestRepImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("trackingSearch.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pid = request.getParameter("search");

		try {
			ParcelRequest pr = parcelService.findRequestParcelBypid(pid);
			List<ParcelTracking> list = parcelService.getParcelSessionSortedBytime(pid);
			request.setAttribute("parcel", pr);
			request.setAttribute("session", list);
			if (pr == null) {
				request.setAttribute("parcelNotfoundError", "No tracking information found for Tracking ID- " + pid);
				request.getRequestDispatcher("trackingSearch.jsp").forward(request, response);
				
				return;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();

		}

		request.getRequestDispatcher("trackingTimeline.jsp").forward(request, response);

	}

}
