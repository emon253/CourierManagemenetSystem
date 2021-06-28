package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.ArrayList;
import java.util.List;

import dbconnection.DBConnection;
import domain.ParcelRequest;
import domain.ParcelTracking;
import dto.ParcelRequestDTO;
import dto.TrackControlDto;

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

	@Override
	public ParcelRequest fetchParcelInfoByid(String pid) throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM tbl_parcel_request WHERE pid = '" + pid + "' ;";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		ParcelRequest pr = new ParcelRequest();
		DateTimeFormatter formatTime = DateTimeFormatter.ofPattern("dd-MM-yyyy" + " HH:mm");
		if (rs.next()) {
			pr.setParcelID(rs.getString("pid"));
			pr.setName(rs.getString("name"));
			pr.setPickupAddress(rs.getString("pSubDistrict") + ", " + rs.getString("pDistrict") + ", "
					+ rs.getString("pDivision") + "\n" + rs.getString("pFullAddress"));
			pr.setDeliveryAddress(rs.getString("dSubDistrict") + ", " + rs.getString("dDistrict") + ", "
					+ rs.getString("dDivision") + "\n" + rs.getString("dFullAddress"));
			pr.setRequestedTime(new SimpleDateFormat("MM-dd-yyyy K:mm aa").format(rs.getTimestamp("requestedTime")));
			return pr;
		} else {
			return null;
		}

	}

	@Override
	public void saveSession(TrackControlDto tc) throws ClassNotFoundException, SQLException {
		String sql1 = "SELECT `pid` FROM tbl_parcel_request WHERE `pDivision` = ? AND `pDistrict` = ? AND `pSubDistrict` = ? AND `dDivision` = ? AND `dDistrict`= ? AND `dSubDistrict` = ?;";
		String sql2 = "INSERT INTO tbl_parcel_tracking(`pid`,`currentSession`) VALUES(?,?);";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement1 = connection.prepareStatement(sql1);
		statement1.setString(1, tc.getpDivision());
		statement1.setString(2, tc.getpDistrict());
		statement1.setString(3, tc.getpSubDistrict());
		statement1.setString(4, tc.getdDivision());
		statement1.setString(5, tc.getdDistrict());
		statement1.setString(6, tc.getdSubDistrict());
		System.out.println(statement1);

		PreparedStatement statement2 = connection.prepareStatement(sql2);

		ResultSet rs = statement1.executeQuery();
		while (rs.next()) {
			
			String pid = rs.getString("pid");
			System.out.println("pid = "+pid);
			statement2.setString(1, pid);
			statement2.setString(2, tc.getSessionMsg());
			statement2.executeUpdate();
		}
	}

	@Override
	public List<ParcelTracking> getSessionByPid(String pid) throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM `tbl_parcel_tracking` WHERE pid = '" + pid + "'";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		List<ParcelTracking> list = new ArrayList<ParcelTracking>();

		while (rs.next()) {
			ParcelTracking pt = new ParcelTracking(rs.getString("pid"), rs.getString("currentSession"),
					new SimpleDateFormat("MM-dd-yyyy K:mm aa").format(rs.getTimestamp("sessionTime")));
			list.add(pt);
		}
		return list;
	}

	@Override
	public List<ParcelRequestDTO> fetchAllRequestedParcel() throws ClassNotFoundException, SQLException {
		String sql = "SELECT DISTINCT`pDivision`,`pDistrict`,`pSubDistrict`,`dDivision`,`dDistrict`,`dSubDistrict`,`pFullAddress`,`dFullAddress` FROM tbl_parcel_request;";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();

		List<ParcelRequestDTO> list = new ArrayList<ParcelRequestDTO>();

		while (rs.next()) {
			ParcelRequestDTO parcel = extractParcel(rs);
			list.add(parcel);
		}
		return list;
	}

	private ParcelRequestDTO extractParcel(ResultSet rs) throws NumberFormatException, SQLException {
		return new ParcelRequestDTO("", "", 0, 0, rs.getString("pDivision"), rs.getString("pDistrict"),
				rs.getString("pSubDistrict"), rs.getString("pFullAddress"), rs.getString("dDivision"),
				rs.getString("dDistrict"), rs.getString("dSubDistrict"), rs.getString("dFullAddress"));
	}

}
