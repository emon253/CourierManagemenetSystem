package service;

import java.sql.SQLException;
import java.util.List;

import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;
import dto.TrackControlDto;

public interface ParcelService {
	ParcelRequest findRequestParcelBypid(String pid) throws ClassNotFoundException, SQLException;

	void saveTrackingInformation(TrackControlDto tc) throws ClassNotFoundException, SQLException;

	List<ParcelTracking> getParcelSessionSortedBytime(String pid) throws ClassNotFoundException, SQLException;

	List<ParcelRequestDTO> getAllRedquestedSortedbyLocationName() throws ClassNotFoundException, SQLException;
}
