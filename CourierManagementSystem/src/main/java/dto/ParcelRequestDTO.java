package dto;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ParcelRequestDTO {
	String parcelID;
	double price;
	
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

	public ParcelRequestDTO(@NotEmpty @Size(min = 4, max = 32) String name, @NotEmpty String email, long phone,
			double parcelWeight, @NotEmpty String pDivision, @NotEmpty String pDistrict, @NotEmpty String pSubDistrict,
			@NotEmpty String pFullAddress, @NotEmpty String dDivision, @NotEmpty String dDistrict,
			@NotEmpty String dSubDistrict, @NotEmpty String dFullAddress) {

		this.name = name;
		this.email = email;
		this.phone = phone;
		this.parcelWeight = parcelWeight;
		this.pDivision = pDivision;
		this.pDistrict = pDistrict;
		this.pSubDistrict = pSubDistrict;
		this.pFullAddress = pFullAddress;
		this.dDivision = dDivision;
		this.dDistrict = dDistrict;
		this.dSubDistrict = dSubDistrict;
		this.dFullAddress = dFullAddress;
	}

	public ParcelRequestDTO() {
	}



	@Override
	public String toString() {
		return "ParcelRequestDTO [parcelID=" + parcelID + ", price=" + price + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + ", parcelWeight=" + parcelWeight + ", pDivision=" + pDivision + ", pDistrict="
				+ pDistrict + ", pSubDistrict=" + pSubDistrict + ", pFullAddress=" + pFullAddress + ", dDivision="
				+ dDivision + ", dDistrict=" + dDistrict + ", dSubDistrict=" + dSubDistrict + ", dFullAddress="
				+ dFullAddress + "]";
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

	public String getpFullAddress() {
		return pFullAddress;
	}

	public void setpFullAddress(String pFullAddress) {
		this.pFullAddress = pFullAddress;
	}

	public String getdFullAddress() {
		return dFullAddress;
	}

	public void setdFullAddress(String dFullAddress) {
		this.dFullAddress = dFullAddress;
	}

	public String getParcelID() {
		return parcelID;
	}

	public void setParcelID(String parcelID) {
		this.parcelID = parcelID;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
