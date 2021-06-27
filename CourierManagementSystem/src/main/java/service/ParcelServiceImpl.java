package service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;
import dto.TrackControlDto;
import repository.ParcelRequestRep;
import repository.ParcelRequestRepImpl;

public class ParcelServiceImpl implements ParcelService {
	private ParcelRequestRep prr;

	public ParcelServiceImpl(ParcelRequestRep prr) {
		this.prr = prr;
	}

	@Override
	public ParcelRequest findRequestParcelBypid(String pid) throws ClassNotFoundException, SQLException {
		ParcelRequest parcel = prr.fetchParcelInfoByid(pid);
		if ( parcel != null )
			return parcel;
		else
			return null;
	}

	@Override
	public void saveTrackingInformation(TrackControlDto tc) throws ClassNotFoundException, SQLException {
		prr.saveSession(tc);
	}

	@Override
	public List<ParcelTracking> getParcelSessionSortedBytime(String pid) throws ClassNotFoundException, SQLException {
		
		
		return prr.getSessionByPid(pid);
	}

	@Override
	public List<ParcelRequestDTO> getAllRedquestedSortedbyLocationName() throws ClassNotFoundException, SQLException {
		
		List<ParcelRequestDTO> parcelList =  prr.fetchAllRequestedParcel();
		
	
		return parcelList;
	}
		
	

}
