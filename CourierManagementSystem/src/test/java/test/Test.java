package test;

import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import javax.mail.MessagingException;

import com.sun.jdi.connect.spi.Connection;

import dbconnection.DBConnection;
import domain.Employee;
import repository.EmployeeRepository;
import repository.EmployeeRepositoryImpl;
import repository.ParcelRequestRep;
import repository.ParcelRequestRepImpl;
import repository.UserRepository;
import repository.UserRepositoryImpl;
import service.OTPGenerator;
import service.ParcelService;
import service.ParcelServiceImpl;
import service.PasswordEncryptor;
import service.UserService;
import service.UserServiceImpl;

public class Test {

	public static void main(String[] args)
			throws ClassNotFoundException, SQLException, MessagingException, NoSuchAlgorithmException {

//		java.sql.Connection con = DBConnection.getConnection();
//		if(con != null) {
//			PreparedStatement st = con.prepareStatement("select * from tbl_parcel_request");
//			ResultSet rs = st.executeQuery();
//			while(rs.next()) {
//				System.out.println(rs.getString("name"));
//			}
//		}else {
//			System.out.println("Fail");
//		}

//		
//		Random random = new Random();
//		int OTP = random.nextInt(999999);
//		System.out.println(String.format("%06d", OTP));

//	UserServiceImpl is = new UserServiceImpl(new UserRepositoryImpl());
//	System.out.println(is.encriptPassword("abc"));
//	System.out.println(is.encriptPassword("abc"));
//	System.out.println(is.encriptPassword("abcd"));
//	
//	System.out.println(OTPGenerator.getInstance().generateOTP());
//	
//		String message = "Your account varification OTP is "+String.format("%06d", OTP);
//		String subject = "Verificaton OTP";
//		String to = "emonchowdhury253@gmail.com";
//		
//		Email.getInstance().sendEmail(message, subject, to);
//
//		UserRepository ur = new UserRepositoryImpl();
//		UserService us = new UserServiceImpl(ur);

//		System.out.println(ur.findUserbyEmail("emonchowdhury253@gmail.com"));
//		
//		System.out.println(ur.findUserByUserName("ddd"));
//
//		ParcelRequestRep prr = new ParcelRequestRepImpl();
//		System.out.println(prr.fetchAllRequestedParcel().get(0).getpDivision());
//
//		ParcelService ps = new ParcelServiceImpl(new ParcelRequestRepImpl());
//
//		System.out.println(ps.getParcelSessionSortedBytime("sdf").get(0).getPid());

		//System.out.println(PasswordEncryptor.getInstance().encriptPassword("emon"));
	
	EmployeeRepository rep = new EmployeeRepositoryImpl();
	
	for (Employee emp : rep.findAllEmployee()) {
		System.out.println(emp);
	}
	
	}

}
