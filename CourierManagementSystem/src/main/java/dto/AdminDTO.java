package dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class AdminDTO {
	@NotEmpty
	@Size(min = 1, max = 32)
	private String id;
	
	@NotEmpty
	@Size(min = 1, max = 32)
	private String name;
	
	@NotEmpty
	@Email
	@Size(min = 6, max = 120)
	private String email;
	
	@NotNull
	private Long phone;
	
	@NotEmpty
	@Size(min = 1, max = 100)
	private String designation;
	
	@NotEmpty
	@Size(min = 1, max = 320)
	private String address;
	
	@NotEmpty
	@Size(min = 6, max = 240)
	private String password;
	
	@NotEmpty
	@Size(min = 6, max = 240)
	private String confirmPassword;
	
	
	
	public AdminDTO() {
	}
	public AdminDTO(String id, String name, String email, Long phone, String designation, String address,
			String password, String confirmPassword) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.designation = designation;
		this.address = address;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
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
		return "AdminLoginDTO [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", designation="
				+ designation + ", address=" + address + ", password=" + password + ", confirmPassword="
				+ confirmPassword + "]";
	}
	
	

}
