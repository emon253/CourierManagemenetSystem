package service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	public static final Email INSTANCE = new Email();
	private Properties properties;

	private Email() {
		properties = System.getProperties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");
	}

	public static Email getInstance() {
		return INSTANCE;
	}

	public void sendEmail(String message, String subject, String to) throws MessagingException {

		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("emonsoft.techbd@gmail.com", "emon2898");
			}
		});

		session.setDebug(true);
		MimeMessage mimeMessage = new MimeMessage(session);

		mimeMessage.setFrom("emonsoft.techbd@gmail.com");
		mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		mimeMessage.setSubject(subject);
		mimeMessage.setText(message);

		Transport.send(mimeMessage);

	}

}
