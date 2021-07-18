package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Feedback;
import repository.UserRepositoryImpl;
import service.UserService;
import service.UserServiceImpl;
import service.ValidationUtil;

@WebServlet("/feedback")
public class FeedbackServlet extends HttpServlet {
	private UserService service = new UserServiceImpl(new UserRepositoryImpl());

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("Feedback.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String req = request.getParameter("feedback");
		if (req.equals("view")) {
			try {
				request.setAttribute("feedbackList", service.findAllFeedback());
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		if (req.equals("submit")) {
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			Feedback feedback = new Feedback(email, subject, message);
			var errors = ValidationUtil.getInstance().validate(feedback);
			if (errors.isEmpty()) {
				try {
					service.processFeedback(feedback);
					request.setAttribute("success",
							"You have successfully submited your feedback, Please check your email for any response");
					request.getRequestDispatcher("Feedback.jsp").forward(request, response);
				} catch (MessagingException | ClassNotFoundException | SQLException e) {
					request.setAttribute("error", "Something went wrong please ensure you have used correct email and check connection");
					request.getRequestDispatcher("Feedback.jsp").forward(request, response);
			e.printStackTrace();
				}
			} else {
				request.setAttribute("errors", errors);
				request.getRequestDispatcher("Feedback.jsp").forward(request, response);

			}
		}

	}

}
