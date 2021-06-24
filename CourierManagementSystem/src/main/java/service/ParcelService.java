package service;

import java.sql.SQLException;

import domain.ParcelRequest;

public interface ParcelService {
	ParcelRequest findRequestParcelBypid(String pid) throws ClassNotFoundException, SQLException;
}
