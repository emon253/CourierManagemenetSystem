package domain;

public class User {
	String name;
	String userName;
	String email;
	long phone;
	String address;
	String password;
	public User(String name, String userName, String email, long phone, String address, String password) {
		super();
		this.name = name;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;
	}
	public User() {

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
	@Override
	public String toString() {
		return "User [name=" + name + ", userName=" + userName + ", email=" + email + ", phone=" + phone + ", address="
				+ address + ", password=" + password + "]";
	}
	
	
}
