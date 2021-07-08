package service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordEncryptor {
	private static PasswordEncryptor INSTANCE = new PasswordEncryptor();
	public static PasswordEncryptor getInstance() {
		return INSTANCE;
	}
	
	private PasswordEncryptor() {
		
	}

	public String encriptPassword(String password) throws NoSuchAlgorithmException {
		var digest = MessageDigest.getInstance("SHA-256");
		var bytes = digest.digest(password.getBytes());
		return bytesToHex(bytes);

	}

	private  String bytesToHex(byte[] hash) {
		StringBuilder hexString = new StringBuilder();

		for (byte b : hash) {
			String hex = Integer.toHexString(0xff & b);
			if (hex.length() == 1) {
				hexString.append(hex);
			}
		}
		return hexString.toString();
	}

}
