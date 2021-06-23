package repository;

import java.sql.SQLException;

import dto.ParcelRequestDTO;

public interface ParcelRequestRep {
	public boolean save(ParcelRequestDTO parcelRequest) throws ClassNotFoundException, SQLException;

}
