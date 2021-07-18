package dto;

import java.security.Timestamp;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import domain.User;

public class Feedback {
	@NotEmpty
	@Email
	@Size(min = 1, max = 220)
	private String email;
	@NotEmpty
	@Size(min = 1, max = 120)
	private String subject;
	
	@NotEmpty
	@Size(min = 1, max = 32)
	private String message;
	
	private User user;
	private String time;

	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Feedback(String email, String subject, String message) {
		super();
		this.email = email;
		this.subject = subject;
		this.message = message;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Feedback [email=" + email + ", subject=" + subject + ", message=" + message + ", user=" + user + "]";
	}
	
}
