package service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import domain.Employee;
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
		if (parcel != null)
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
	public List<ParcelRequest> getAllRedquestedParcel() throws ClassNotFoundException, SQLException {

		List<ParcelRequest> parcelList = prr.fetchAllRequestedParcel();

		return parcelList;
	}

	@Override
	public List<ParcelRequest> searchParcel(String skey, String type) throws SQLException, ClassNotFoundException {
		List<ParcelRequest> list = prr.fetchAllRequestedParcel();
		List<ParcelRequest> newList = new ArrayList<>();
		Gson json = new Gson();
		for (ParcelRequest parcel : list) {

			if (type.equals("pickup") && parcel.getPickupAddress().toLowerCase().contains(skey)
					|| parcel.getPickupAddress().contains(skey)) {
				newList.add(parcel);
			}
			if (type.equals("delivery") && parcel.getDeliveryAddress().toLowerCase().contains(skey)
					|| parcel.getDeliveryAddress().contains(skey)) {
				newList.add(parcel);
			}
			if (type.equals("byID") && parcel.getParcelID().toLowerCase().equals(skey)
					|| parcel.getParcelID().equals(skey)) {
				newList.add(parcel);
			}
		}

		return newList;
	}
}
