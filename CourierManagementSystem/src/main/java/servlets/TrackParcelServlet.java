package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ParcelRequest;
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
		ParcelRequest pr = parcelService.findRequestParcelBypid(pid);
		System.out.println(pr.getRequestedTime());
		request.setAttribute("parcel", pr);
		request.getRequestDispatcher("trackingTimeline.jsp").forward(request, response);

	}

}
