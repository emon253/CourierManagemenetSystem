package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.mail.MessagingException;
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
import dto.ParcelReceiverDTO;
import dto.ParcelRequestDTO;
import dto.ParcelSenderDTO;
import repository.ParcelRequestRep;
import repository.ParcelRequestRepImpl;
import service.Email;
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
			final String mail = "You have successfully sent a parcel, you can track your parcel using the tracking id "
					+ pr.getParcelID();
			if (prr.save(pr)) {
				Email.getInstance().sendEmail(mail, "CMS Courier", pr.getParcelSenderDto().getEmail());
				session.setAttribute("msg", "success");
				response.sendRedirect("home.jsp");
			} else {

				request.getRequestDispatcher("parcelrequest.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException | IOException | ServletException | MessagingException e) {
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
		ParcelSenderDTO psd = new ParcelSenderDTO();
		ParcelReceiverDTO prd = new ParcelReceiverDTO();

		psd.setName(request.getParameter("name"));
		psd.setEmail(request.getParameter("email"));
		psd.setPhone(Long.parseLong(request.getParameter("phone")));
		psd.setpDivision(request.getParameter("pDivision"));
		psd.setpDistrict(request.getParameter("pDistrict"));
		psd.setpSubDistrict(request.getParameter("pSubDistrict"));
		psd.setpFullAddress(request.getParameter("pFullAddress"));

		prd.setName(request.getParameter("rname"));
		prd.setEmail(request.getParameter("remail"));
		prd.setPhone(Long.parseLong(request.getParameter("rphone")));
		prd.setdFullAddress(request.getParameter("dFullAddress"));
		prd.setdDivision(request.getParameter("dDivision"));
		prd.setdDistrict(request.getParameter("dDistrict"));
		prd.setdSubDistrict(request.getParameter("dSubDistrict"));

		pr.setParcelWeight(Double.parseDouble(request.getParameter("parcelWeight")));
		pr.setParcelReceiverDto(prd);
		pr.setParcelSenderDto(psd);

		return pr;
	}

}
