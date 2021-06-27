package dto;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class TrackControlDto {
	private String pDivision;

	private String pDistrict;

	private String pSubDistrict;

	private String pFullAddress;

	private String dDivision;

	private String dDistrict;

	private String dSubDistrict;

	private String dFullAddress;
	
	private String sessionMsg;
	
	private int overvationCount;



	public TrackControlDto(String pDivision, String pDistrict, String pSubDistrict, String pFullAddress,
			String dDivision, String dDistrict, String dSubDistrict, String dFullAddress, String sessionMsg,
			int overvationCount) {
		this.pDivision = pDivision;
		this.pDistrict = pDistrict;
		this.pSubDistrict = pSubDistrict;
		this.pFullAddress = pFullAddress;
		this.dDivision = dDivision;
		this.dDistrict = dDistrict;
		this.dSubDistrict = dSubDistrict;
		this.dFullAddress = dFullAddress;
		this.sessionMsg = sessionMsg;
		this.overvationCount = overvationCount;
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

	public int getOvervationCount() {
		return overvationCount;
	}

	public void setOvervationCount(int overvationCount) {
		this.overvationCount = overvationCount;
	}

	public String getSessionMsg() {
		return sessionMsg;
	}

	public void setSessionMsg(String sessionMsg) {
		this.sessionMsg = sessionMsg;
	}
	
	
}
