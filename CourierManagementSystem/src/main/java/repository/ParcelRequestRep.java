package repository;

import java.sql.SQLException;
import java.util.List;

import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;
import dto.TrackControlDto;

public interface ParcelRequestRep {
	public boolean save(ParcelRequestDTO parcelRequest) throws ClassNotFoundException, SQLException;

	ParcelRequest fetchParcelInfoByid(String pid) throws ClassNotFoundException, SQLException;

	void saveSession(TrackControlDto tc) throws ClassNotFoundException, SQLException;

	List<ParcelTracking> getSessionByPid(String pid) throws ClassNotFoundException, SQLException;

	List<ParcelRequest> fetchAllRequestedParcel() throws ClassNotFoundException, SQLException;


	List<String> getAllpDivition() throws ClassNotFoundException, SQLException;

	List<String> getAllpDistrict(String division) throws ClassNotFoundException, SQLException;

	List<String> getAllpSubDistrict(String division, String district) throws ClassNotFoundException, SQLException;

	List<String> getAlldDivition(String pDiv, String pDis, String psDis) throws ClassNotFoundException, SQLException;

	List<String> getAlldDistrict(String pDiv, String pDis, String psDis, String dDiv)
			throws ClassNotFoundException, SQLException;

	List<String> getAlldSubDistrict(String pDiv, String pDis, String psDis, String dDiv, String dDis)
			throws ClassNotFoundException, SQLException;

	int getTotalNumberofRequest(TrackControlDto tc) throws ClassNotFoundException, SQLException;

}
