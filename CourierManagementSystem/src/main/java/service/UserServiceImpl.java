package service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.mail.MessagingException;

import domain.User;
import dto.Feedback;
import dto.LoginDTO;
import dto.UserDTO;
import repository.UserRepository;

public class UserServiceImpl implements UserService {
	private UserRepository userRepository;

	public UserServiceImpl(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Override
	public void saveUser(UserDTO userDto) throws NoSuchAlgorithmException, ClassNotFoundException, SQLException {
		User user = new User();
		user.setName(userDto.getName());
		user.setUserName(userDto.getUserName());
		user.setEmail(userDto.getEmail());
		user.setPhone(userDto.getPhone());
		user.setAddress(userDto.getAddress());
		String encryptP = encriptPassword(userDto.getPassword());
		user.setPassword(encryptP);
		userRepository.save(user);
	}

	@Override
	public boolean isUniqueUserName(String userName) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		User user = userRepository.findUserByUserName(userName);
		if (user.getUserName() == null)
			return true;
		else
			return false;
	}

	@Override
	public boolean isEmailExist(String email) throws ClassNotFoundException, SQLException {

		User user = userRepository.findUserbyEmail(email);

		if (user.getEmail() == null)
			return true;
		else
			return false;
	}

	@Override
	public User verifyUser(LoginDTO userDto)
			throws NoSuchAlgorithmException, ClassNotFoundException, SQLException, UserPrincipalNotFoundException {
		String email = userDto.getEmail();
		String password = encriptPassword(userDto.getPassword());

		User user = userRepository.findUserbyEmail(email);

		if (password.equals(user.getPassword())) {

			return user;

		} else
			throw new UserPrincipalNotFoundException("Incorrect Username password");
	}

	public String encriptPassword(String password) throws NoSuchAlgorithmException {
		var digest = MessageDigest.getInstance("SHA-256");
		var bytes = digest.digest(password.getBytes());
		return bytesToHex(bytes);

	}

	private static String bytesToHex(byte[] hash) {
		StringBuilder hexString = new StringBuilder();

		for (byte b : hash) {
			String hex = Integer.toHexString(0xff & b);
			if (hex.length() == 1) {
				hexString.append(hex);
			}
		}
		return hexString.toString();
	}

	@Override
	public void processFeedback(Feedback feedback) throws MessagingException, ClassNotFoundException, SQLException {
		String time = DateTimeFormatter.ofPattern("yyyy-MM-dd h:mm a").format(LocalDateTime.now());

		feedback.setTime(time);
		
		Email.getInstance().sendEmail("Your feedback has successfully submited", feedback.getSubject(), feedback.getEmail());
		userRepository.saveFeedback(feedback);
		
	}

}
