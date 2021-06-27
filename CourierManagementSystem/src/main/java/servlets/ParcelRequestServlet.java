package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import dbconnection.DBConnection;
import domain.ParcelRequest;
import dto.ParcelRequestDTO;
import repository.ParcelRequestRep;
import repository.ParcelRequestRepImpl;
import service.OTPGenerator;
import service.ValidationUtil;

@WebServlet("/ParcelRequestServlet")
public class ParcelRequestServlet extends HttpServlet {
	ParcelRequestRep prr = new ParcelRequestRepImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// request.getRequestDispatcher("parcelrequest.jsp").forward(request, response);
		HttpSession session = request.getSession();

		try {
			ParcelRequestDTO pr = (ParcelRequestDTO) session.getAttribute("parcelRequest");

			if (prr.save(pr)) {
				session.setAttribute("msg", "success");
				response.sendRedirect("home.jsp");
			} else {

				request.getRequestDispatcher("parcelrequest.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException | IOException | ServletException e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ParcelRequestDTO pr = copyParametersTo(request);

		String pid = "CMS200" + OTPGenerator.getInstance().generateOTP();
		HttpSession session = request.getSession();
		Map<String, String> errors = ValidationUtil.getInstance().validate(pr);

		if (errors.isEmpty()) {
			if (pr.getParcelWeight() > 10) {
				pr.setPrice(((pr.getParcelWeight() - 10) * 10) + 80);
			} else {
				pr.setPrice(80);
			}
			pr.setParcelID(pid);
			session.setAttribute("parcelRequest", pr);
			response.sendRedirect("trackingAndPrice.jsp");

		} else {
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("parcelrequest.jsp").forward(request, response);
			errors.clear();
		}

	}

	private ParcelRequestDTO copyParametersTo(HttpServletRequest request) {
		var pr = new ParcelRequestDTO();
		
		//pr.setParcelID();
		pr.setName(request.getParameter("name"));
		pr.setEmail(request.getParameter("email"));
		pr.setPhone(Long.parseLong(request.getParameter("phone")));
		pr.setParcelWeight(Long.parseLong(request.getParameter("parcelWeight")));
		pr.setpDivision(request.getParameter("pDivision"));
		pr.setpDistrict(request.getParameter("pDistrict"));
		pr.setpSubDistrict(request.getParameter("pSubDistrict"));
		pr.setpFullAddress(request.getParameter("pFullAddress"));
		pr.setdFullAddress(request.getParameter("dFullAddress"));
		pr.setdDivision(request.getParameter("dDivision"));
		pr.setdDistrict(request.getParameter("dDistrict"));
		pr.setdSubDistrict(request.getParameter("dSubDistrict"));
		
		return pr;
	}

}
