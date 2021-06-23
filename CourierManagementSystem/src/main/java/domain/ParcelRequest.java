package domain;

import java.time.LocalDateTime;

public class ParcelRequest {
	String parcelID;
	String name;
	String email;
	long phone;
	double parcelWeight;
	String pickupAddress;
	String deliveryAddress;
	LocalDateTime requestedTime;
	public ParcelRequest(String name, String email, long phone, double parcelWeight, String pickupAddress,
			String deliveryAddress) {

		this.name = name;
		this.email = email;
		this.phone = phone;
		this.parcelWeight = parcelWeight;
		this.pickupAddress = pickupAddress;
		this.deliveryAddress = deliveryAddress;
	}
	public ParcelRequest() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ParcelRequestDTO [name=" + name + ", email=" + email + ", phone=" + phone + ", parcelWeight="
				+ parcelWeight + ", pickupAddress=" + pickupAddress + ", deliveryAddress=" + deliveryAddress + "]";
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
	public String getPickupAddress() {
		return pickupAddress;
	}
	public void setPickupAddress(String pickupAddress) {
		this.pickupAddress = pickupAddress;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getParcelID() {
		return parcelID;
	}
	public void setParcelID(String parcelID) {
		this.parcelID = parcelID;
	}
	public LocalDateTime getRequestedTime() {
		return requestedTime;
	}
	public void setRequestedTime(LocalDateTime requestedTime) {
		this.requestedTime = requestedTime;
	}
	
}
