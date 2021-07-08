package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ParcelRequest;
import repository.ParcelRequestRepImpl;
import service.ParcelService;
import service.ParcelServiceImpl;

@WebServlet("/viewParcel")
public class ParcelRequestViewer extends HttpServlet {
	private ParcelService service = new ParcelServiceImpl(new ParcelRequestRepImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			var pRequest = service.getAllRedquestedParcel();
			request.setAttribute("parcel", pRequest);
			// System.out.println(pRequest);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		//response.sendRedirect("ViewParcelRequests.jsp");
		request.getRequestDispatcher("ViewParcelRequests.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
