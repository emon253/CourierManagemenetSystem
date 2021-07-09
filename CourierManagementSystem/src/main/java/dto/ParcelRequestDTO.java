package dto;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ParcelRequestDTO {

	private ParcelSenderDTO parcelSenderDto;

	private ParcelReceiverDTO parcelReceiverDto;

	private String parcelID;

	private double price;

	@NotNull
	@Max(value = 100)
	private double parcelWeight;

	public ParcelRequestDTO() {
	}

	public ParcelRequestDTO(ParcelSenderDTO parcelSenderDto, ParcelReceiverDTO parcelReceiverDto, String parcelID,
			double price, double parcelWeight) {
		this.parcelReceiverDto = parcelReceiverDto;
		this.parcelID = parcelID;
		this.price = price;
		this.parcelWeight = parcelWeight;
	}

	public ParcelSenderDTO getParcelSenderDto() {
		return parcelSenderDto;
	}

	public void setParcelSenderDto(ParcelSenderDTO parcelSenderDto) {
		this.parcelSenderDto = parcelSenderDto;
	}

	public ParcelReceiverDTO getParcelReceiverDto() {
		return parcelReceiverDto;
	}

	public void setParcelReceiverDto(ParcelReceiverDTO parcelReceiverDto) {
		this.parcelReceiverDto = parcelReceiverDto;
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

	public double getParcelWeight() {
		return parcelWeight;
	}

	public void setParcelWeight(double parcelWeight) {
		this.parcelWeight = parcelWeight;
	}

	@Override
	public String toString() {
		return "ParcelRequestDTO [parcelSenderDto=" + parcelSenderDto + ", parcelReceiverDto=" + parcelReceiverDto
				+ ", parcelID=" + parcelID + ", price=" + price + ", parcelWeight=" + parcelWeight + "]";
	}
	
	

}
