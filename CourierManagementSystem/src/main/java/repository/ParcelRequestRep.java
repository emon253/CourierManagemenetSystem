package repository;

import java.sql.SQLException;
import java.util.List;

import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;

public interface ParcelRequestRep {
	public boolean save(ParcelRequestDTO parcelRequest) throws ClassNotFoundException, SQLException;

	ParcelRequest fetchParcelInfoByid(String pid) throws ClassNotFoundException, SQLException;

	void saveSession(ParcelTracking parcelTracking);

	ParcelTracking getSessionByPid(String pid);
	
	List<ParcelRequestDTO> fetchAllRequestedParcel() throws ClassNotFoundException, SQLException;
}
