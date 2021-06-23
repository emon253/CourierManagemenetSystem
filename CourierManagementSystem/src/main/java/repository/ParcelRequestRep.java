package repository;

import java.sql.SQLException;

import domain.ParcelRequest;
import dto.ParcelRequestDTO;

public interface ParcelRequestRep {
	public boolean save(ParcelRequestDTO parcelRequest) throws ClassNotFoundException, SQLException;
	ParcelRequest  fetchParcelInfoByid(String pid);
}
