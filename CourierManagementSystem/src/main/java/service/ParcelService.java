package service;

import java.sql.SQLException;
import java.util.List;

import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;

public interface ParcelService {
	ParcelRequest findRequestParcelBypid(String pid) throws ClassNotFoundException, SQLException;

	void saveTrackingInformation(ParcelTracking parcelTracking);

	ParcelTracking getParcelSessionSortedBytime(String pid);

	List<ParcelRequestDTO> getAllRedquestedSortedbyLocationName() throws ClassNotFoundException, SQLException;
}
