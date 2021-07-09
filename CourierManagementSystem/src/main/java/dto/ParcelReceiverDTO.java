package dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ParcelReceiverDTO {
	@NotEmpty
	@Size(min = 1, max = 32)
	private String name;

	@NotEmpty
	@Email
	@Size(min = 6, max = 120)
	private String email;

	@NotNull
	private long phone;

	@NotNull
	@Max(value = 100)
	private double parcelWeight;

	@NotEmpty
	@Size(min = 1, max = 50)
	private String dDivision;

	@NotEmpty
	@Size(min = 1, max = 50)
	private String dDistrict;

	@NotEmpty
	@Size(min = 1, max = 50)
	private String dSubDistrict;

	@NotEmpty
	@Size(min = 1, max = 140)
	private String dFullAddress;

	public ParcelReceiverDTO(String name, String email, long phone, double parcelWeight, String dDivision,
			String dDistrict, String dSubDistrict, String dFullAddress) {
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.parcelWeight = parcelWeight;
		this.dDivision = dDivision;
		this.dDistrict = dDistrict;
		this.dSubDistrict = dSubDistrict;
		this.dFullAddress = dFullAddress;
	}

	public ParcelReceiverDTO() {
		super();
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

	public double getParcelWeight() {
		return parcelWeight;
	}

	public void setParcelWeight(double parcelWeight) {
		this.parcelWeight = parcelWeight;
	}

	public String getdDivision() {
		return dDivision;
	}

	public void setdDivision(String dDivision) {
		this.dDivision = dDivision;
	}

	public String getdDistrict() {
		return dDistrict;
	}

	public void setdDistrict(String dDistrict) {
		this.dDistrict = dDistrict;
	}

	public String getdSubDistrict() {
		return dSubDistrict;
	}

	public void setdSubDistrict(String dSubDistrict) {
		this.dSubDistrict = dSubDistrict;
	}

	public String getdFullAddress() {
		return dFullAddress;
	}

	public void setdFullAddress(String dFullAddress) {
		this.dFullAddress = dFullAddress;
	}

	@Override
	public String toString() {
		return "ParcelReceiverDTO [name=" + name + ", email=" + email + ", phone=" + phone + ", parcelWeight="
				+ parcelWeight + ", dDivision=" + dDivision + ", dDistrict=" + dDistrict + ", dSubDistrict="
				+ dSubDistrict + ", dFullAddress=" + dFullAddress + "]";
	}

	
}
