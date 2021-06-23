package service;

import java.util.Random;

public class OTPGenerator {
	private static OTPGenerator INSTANCE = new OTPGenerator();
	private Random random;

	private OTPGenerator() {
		this.random = new Random();
	}

	public static OTPGenerator getInstance() {
		return INSTANCE;
	}

	public String generateOTP() {

		return String.format("%06d", random.nextInt(999999));

	}

}
