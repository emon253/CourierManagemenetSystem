package servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DBConnection;
import service.Email;
import service.OTPGenerator;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
	private HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String req = request.getParameter("otp");
		String email = request.getParameter("email");

		session = request.getSession(true);
		System.out.println(email);
		if (req.equals("true")) {
			String OTP = OTPGenerator.getInstance().generateOTP();
			System.out.println(OTP);
			System.out.println(email);
			System.out.println(session.getAttribute("otpCode"));

			try {
				Email.getInstance().sendEmail(OTP, "CMS signup otp verification", email);
				session.setAttribute("otpCode", OTP);
			} catch (MessagingException e) {
				e.printStackTrace();
			}

		} else {
			//request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
		
		//request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
	
		
	}
}
