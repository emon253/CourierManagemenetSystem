package service;

import java.sql.SQLException;

import domain.ParcelRequest;
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

}
