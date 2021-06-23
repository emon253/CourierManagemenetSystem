package dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class UserDTO {
	@NotEmpty
	@Size(min = 1, max = 32)
	private String name;

	@NotEmpty
	@Size(min = 1, max = 32)
	private String userName;

	@NotEmpty
	@Email
	@Size(min = 6, max = 120)
	private String email;

	@NotNull
	private long phone;

	@NotEmpty
	@Size(min = 1, max = 320)
	private String address;

	@NotEmpty
	@Size(min = 6, max = 240)
	private String password;

	@NotEmpty
	@Size(min = 6, max = 240)
	private String confirmPassword;

	public UserDTO(String name, String userName, String email, long phone, String address, String password,
			String confirmPassword) {
		this.name = name;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}

	public UserDTO() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		return "UserDTO [name=" + name + ", userName=" + userName + ", email=" + email + ", phone=" + phone
				+ ", address=" + address + ", password=" + password + ", confirmPassword=" + confirmPassword + "]";
	}

}
