package service;

import java.sql.SQLException;
import java.util.List;

import domain.Employee;
import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;
import dto.TrackControlDto;

public interface ParcelService {
	ParcelRequest findRequestParcelBypid(String pid) throws ClassNotFoundException, SQLException;

	void saveTrackingInformation(TrackControlDto tc) throws ClassNotFoundException, SQLException;

	List<ParcelTracking> getParcelSessionSortedBytime(String pid) throws ClassNotFoundException, SQLException;

	List<ParcelRequest> getAllRedquestedParcel() throws ClassNotFoundException, SQLException;
	List<ParcelRequest> searchParcel(String skey,String dkey) throws SQLException, ClassNotFoundException;

}
