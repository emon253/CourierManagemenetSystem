package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import dbconnection.DBConnection;
import domain.ParcelRequest;
import dto.ParcelRequestDTO;

public class ParcelRequestRepImpl implements ParcelRequestRep {

	@Override
	public boolean save(ParcelRequestDTO pr) throws ClassNotFoundException, SQLException {
		String sql = "INSERT INTO tbl_parcel_request  (`pid`,`name`,`email`,`phone`,`parcelWeight`,`pDivision`,`pDistrict`,`pSubDistrict`,`dDivision`,`dDistrict`,`dSubDistrict`,`pFullAddress`,`dFullAddress`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		
		statement.setString(1, pr.getParcelID());
		statement.setString(2, pr.getName());
		statement.setString(3, pr.getEmail());
		statement.setLong(4, pr.getPhone());
		statement.setDouble(5, pr.getParcelWeight());
		statement.setString(6, pr.getpDivision());
		statement.setString(7, pr.getpDistrict());
		statement.setString(8, pr.getpSubDistrict());
		statement.setString(9, pr.getdDivision());
		statement.setString(10, pr.getdDistrict());
		statement.setString(11, pr.getdSubDistrict());
		statement.setString(12, pr.getpFullAddress());
		statement.setString(13, pr.getdFullAddress());
		
		System.out.println(statement);

		if (statement.executeUpdate() > 0) {
			connection.close();
			return true;

		} else {
			return false;
		}

	}

}
