package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dto.TrackControlDto;
import repository.ParcelRequestRep;
import repository.ParcelRequestRepImpl;
import service.ParcelService;
import service.ParcelServiceImpl;
import service.ValidationUtil;

@WebServlet("/trackControl")
public class TrackingParcelControlServlet extends HttpServlet {
	private ParcelService service = new ParcelServiceImpl(new ParcelRequestRepImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TrackControlDto tc = new TrackControlDto(request.getParameter("pDivision"), request.getParameter("pDistrict"),
				request.getParameter("pSubDistrict"), request.getParameter("dDivision"),
				request.getParameter("dDistrict"), request.getParameter("dSubDistrict"),
				request.getParameter("sessionMsg"), 0);

		TrackControlDto loc = new TrackControlDto();
		response.setContentType("text/html");

		ParcelRequestRep pr = new ParcelRequestRepImpl();
		List<TrackControlDto> list = new ArrayList<TrackControlDto>();
		Gson json = new Gson();
		response.setContentType("text/html");

		try {
			if (tc.getpDivision() != null) {
				String pDis = json.toJson(pr.getAllpDistrict(tc.getpDivision()));
				loc.setpDistrict(pDis);
			}
			if (tc.getpDistrict() != null) {
				String psDis = json.toJson(pr.getAllpSubDistrict(tc.getpDivision(), tc.getpDistrict()));
				loc.setpSubDistrict(psDis);
			}
			if (tc.getpSubDistrict() != null) {
				String dDiv = json
						.toJson(pr.getAlldDivition(tc.getpDivision(), tc.getpDistrict(), tc.getpSubDistrict()));
				loc.setdDivision(dDiv);
			}
			if (tc.getdDivision() != null) {
				String dDis = json.toJson(pr.getAlldDistrict(tc.getpDivision(), tc.getpDistrict(), tc.getpSubDistrict(),
						tc.getdDivision()));
				loc.setdDistrict(dDis);
			}
			if (tc.getdDistrict() != null) {
				String dsDis = json.toJson(pr.getAlldSubDistrict(tc.getpDivision(), tc.getpDistrict(),
						tc.getpSubDistrict(), tc.getdDivision(), tc.getdDistrict()));
				loc.setdSubDistrict(dsDis);
			}
			loc.setOvervationCount(pr.getTotalNumberofRequest(tc));
			response.getWriter().write(json.toJson(loc));
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TrackControlDto trackControl = new TrackControlDto(request.getParameter("pDivision"),
				request.getParameter("pDistrict"), request.getParameter("pSubDistrict"),
				request.getParameter("dDivision"), request.getParameter("dDistrict"),
				request.getParameter("dSubDistrict"), request.getParameter("sessionMsg"), 0);
		trackControl.setStates(request.getParameter("states"));
		var errors = ValidationUtil.getInstance().validate(trackControl);
		try {
			if (errors.isEmpty()) {
				service.saveTrackingInformation(trackControl);
				response.getWriter().write("success");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
