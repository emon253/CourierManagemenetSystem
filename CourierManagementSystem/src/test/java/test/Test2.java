package test;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.mail.MessagingException;

import service.Email;

public class Test2 {

	public static void main(String[] args) throws MessagingException {

		String s = DateTimeFormatter.ofPattern("yyyy-MM-dd h:mm a").format(LocalDateTime.now());
	/////for test commi
	}

}
