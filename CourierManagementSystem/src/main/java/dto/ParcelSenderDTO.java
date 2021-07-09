package dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ParcelSenderDTO {

	@NotEmpty
	@Size(min = 1, max = 32)
	private String name;

	@NotEmpty
	@Email
	@Size(min = 6, max = 120)
	private String email;

	@NotNull
	private long phone;

	@NotEmpty
	@Size(min = 1, max = 50)
	private String pDivision;

	@NotEmpty
	@Size(min = 1, max = 50)
	private String pDistrict;

	@NotEmpty
	@Size(min = 1, max = 50)
	private String pSubDistrict;

	@NotEmpty
	@Size(min = 1, max = 140)
	private String pFullAddress;

	public ParcelSenderDTO() {
		super();
	}

	public ParcelSenderDTO(String name, String email, long phone, String pDivision, String pDistrict,
			String pSubDistrict, String pFullAddress) {
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.pDivision = pDivision;
		this.pDistrict = pDistrict;
		this.pSubDistrict = pSubDistrict;
		this.pFullAddress = pFullAddress;
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

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getpDivision() {
		return pDivision;
	}

	public void setpDivision(String pDivision) {
		this.pDivision = pDivision;
	}

	public String getpDistrict() {
		return pDistrict;
	}

	public void setpDistrict(String pDistrict) {
		this.pDistrict = pDistrict;
	}

	public String getpSubDistrict() {
		return pSubDistrict;
	}

	public void setpSubDistrict(String pSubDistrict) {
		this.pSubDistrict = pSubDistrict;
	}

	public String getpFullAddress() {
		return pFullAddress;
	}

	public void setpFullAddress(String pFullAddress) {
		this.pFullAddress = pFullAddress;
	}

	@Override
	public String toString() {
		return "ParcelSenderDTO [name=" + name + ", email=" + email + ", phone=" + phone + ", pDivision=" + pDivision
				+ ", pDistrict=" + pDistrict + ", pSubDistrict=" + pSubDistrict + ", pFullAddress=" + pFullAddress
				+ "]";
	}
	
	

}
