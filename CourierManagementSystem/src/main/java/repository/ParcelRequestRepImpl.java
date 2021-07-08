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
			pr.setRequestedTime(new SimpleDateFormat("dd-MM-yyyy K:mm aa").format(rs.getTimestamp("requestedTime")));
			return pr;
		} else {
			return null;
		}

	}

	@Override
	public void saveSession(TrackControlDto tc) throws ClassNotFoundException, SQLException {
		String sql1 = "SELECT `pid` FROM tbl_parcel_request WHERE `pDivision` = ? AND `pDistrict` = ? AND `pSubDistrict` = ? AND `dDivision` = ? AND `dDistrict`= ? AND `dSubDistrict` = ?;";
		String sql2 = "INSERT INTO tbl_parcel_tracking(`pid`,`currentSession`) VALUES(?,?);";
		String sql3 = "UPDATE `tbl_parcel_request` SET `states` = ? WHERE `tbl_parcel_request`.`pid` = ?";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement1 = connection.prepareStatement(sql1);
		statement1.setString(1, tc.getpDivision());
		statement1.setString(2, tc.getpDistrict());
		statement1.setString(3, tc.getpSubDistrict());
		statement1.setString(4, tc.getdDivision());
		statement1.setString(5, tc.getdDistrict());
		statement1.setString(6, tc.getdSubDistrict());

		PreparedStatement statement2 = connection.prepareStatement(sql2);

		PreparedStatement statement3 = connection.prepareStatement(sql3);
		ResultSet rs = statement1.executeQuery();
		while (rs.next()) {

			String pid = rs.getString("pid");
			statement2.setString(1, pid);
			statement2.setString(2, tc.getSessionMsg());

			statement3.setString(1, tc.getStates());
			statement3.setString(2, pid);

			statement2.executeUpdate();
			statement3.executeUpdate();

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
					new SimpleDateFormat("dd-MM-yyyy K:mm aa").format(rs.getTimestamp("sessionTime")));
			list.add(pt);
		}
		return list;
	}

	@Override
	public List<ParcelRequest> fetchAllRequestedParcel() throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM tbl_parcel_request;";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();

		List<ParcelRequest> list = new ArrayList<ParcelRequest>();

		while (rs.next()) {
			ParcelRequest parcel = extractParcel(rs);
			list.add(parcel);
		}
		return list;
	}

	private ParcelRequest extractParcel(ResultSet rs) throws NumberFormatException, SQLException {
		var address = new ParcelRequestDTO("", "", 0, 0, rs.getString("pDivision"), rs.getString("pDistrict"),
				rs.getString("pSubDistrict"), rs.getString("pFullAddress"), rs.getString("dDivision"),
				rs.getString("dDistrict"), rs.getString("dSubDistrict"), rs.getString("dFullAddress"));
		var request = new ParcelRequest();
		request.setParcelID(rs.getString("pid"));
		request.setName(rs.getString("name"));
		request.setEmail(rs.getString("email"));
		request.setPhone(rs.getLong("phone"));
		request.setParcelWeight(rs.getInt("parcelWeight"));
		request.setPickupAddress(address.getpSubDistrict() +","+ address.getpDistrict() +", "+address.getpDivision()+"\n"+address.getpFullAddress());
		request.setDeliveryAddress(address.getdSubDistrict() +","+ address.getdDistrict() +", "+address.getdDivision()+"\n"+address.getdFullAddress());
		
		return request;
	}

	@Override
	public List<String> getAllpDivition() throws ClassNotFoundException, SQLException {
		String sql = "SELECT DISTINCT `pDivision` FROM `tbl_parcel_request` WHERE `states` != 'Delivered';";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		List<String> list = new ArrayList<String>();
		while (rs.next()) {
			list.add(rs.getString("pDivision"));
		}
		return list;
	}

	@Override
	public List<String> getAllpDistrict(String division) throws ClassNotFoundException, SQLException {
		String sql = "SELECT DISTINCT `pDistrict` FROM `tbl_parcel_request` WHERE `pDivision` = '" + division
				+ "' AND `states` != 'Delivered';";

		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		List<String> list = new ArrayList<String>();
		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			list.add(rs.getString("pDistrict"));
		}
		return list;
	}

	@Override
	public List<String> getAllpSubDistrict(String division, String district)
			throws ClassNotFoundException, SQLException {
		String sql = "SELECT `pSubDistrict` FROM `tbl_parcel_request` WHERE `pDivision` = ? AND `pDistrict` = ? AND `states` != 'Delivered';";

		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, division);
		statement.setString(2, district);
		List<String> list = new ArrayList<String>();

		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			list.add(rs.getString("pSubDistrict"));
		}
		return list;
	}

	@Override
	public List<String> getAlldDivition(String pDiv, String pDis, String psDis)
			throws ClassNotFoundException, SQLException {
		String sql = "SELECT DISTINCT `dDivision` FROM `tbl_parcel_request` WHERE pDivision=? AND pDistrict = ? AND pSubDistrict = ? AND `states` != 'Delivered';";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, pDiv);
		statement.setString(2, pDis);
		statement.setString(3, psDis);

		ResultSet rs = statement.executeQuery();
		List<String> list = new ArrayList<String>();
		while (rs.next()) {
			list.add(rs.getString("dDivision"));
		}
		return list;
	}

	@Override
	public List<String> getAlldDistrict(String pDiv, String pDis, String psDis, String dDiv)
			throws ClassNotFoundException, SQLException {
		String sql = "SELECT DISTINCT `dDistrict` FROM `tbl_parcel_request` WHERE pDivision=? AND pDistrict = ? AND pSubDistrict = ? AND dDivision = ? AND `states` != 'Delivered';";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, pDiv);
		statement.setString(2, pDis);
		statement.setString(3, psDis);
		statement.setString(4, dDiv);
		ResultSet rs = statement.executeQuery();
		List<String> list = new ArrayList<String>();

		while (rs.next()) {
			list.add(rs.getString("dDistrict"));
		}
		return list;
	}

	@Override
	public List<String> getAlldSubDistrict(String pDiv, String pDis, String psDis, String dDiv, String dDis)
			throws ClassNotFoundException, SQLException {

		String sql = "SELECT DISTINCT `dSubDistrict` FROM `tbl_parcel_request` WHERE pDivision=? AND pDistrict = ? AND pSubDistrict = ? AND dDivision = ? AND dDistrict = ? AND `states` != 'Delivered';";
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, pDiv);
		statement.setString(2, pDis);
		statement.setString(3, psDis);
		statement.setString(4, dDiv);
		statement.setString(5, dDis);
//		System.out.println(statement);

		List<String> list = new ArrayList<String>();
		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			list.add(rs.getString("dSubDistrict"));
		}
		return list;
	}

	@Override
	public int getTotalNumberofRequest(TrackControlDto tc) throws ClassNotFoundException, SQLException {
		String sql1 = "SELECT count(*) FROM tbl_parcel_request WHERE `pDivision` = ? AND `pDistrict` = ? AND `pSubDistrict` = ? AND `dDivision` = ? AND `dDistrict`= ? AND `dSubDistrict` = ? AND `states` != 'Delivered'; ";
		int total = 0;
		Connection connection = DBConnection.getConnection();
		PreparedStatement statement1 = connection.prepareStatement(sql1);
		statement1.setString(1, tc.getpDivision());
		statement1.setString(2, tc.getpDistrict());
		statement1.setString(3, tc.getpSubDistrict());
		statement1.setString(4, tc.getdDivision());
		statement1.setString(5, tc.getdDistrict());
		statement1.setString(6, tc.getdSubDistrict());
		ResultSet rs = statement1.executeQuery();
		System.out.println(statement1);
		while (rs.next()) {
			total = rs.getInt("count(*)");
			System.out.println(total);
		}
		return total;
	}

}
