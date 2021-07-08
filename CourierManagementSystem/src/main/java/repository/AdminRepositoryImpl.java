package repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;
import domain.Admin;
import domain.User;

public class AdminRepositoryImpl implements AdminRepository {
	private Connection connection;

	@Override
	public void save(Admin admin) throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		String sql = "INSERT INTO tbl_admin(`id`,`name`,`email`,`phone`,`designation`,`address`,`password`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, admin.getId());
		statement.setString(2, admin.getName());
		statement.setString(3, admin.getEmail());
		statement.setLong(4, admin.getPhone());
		statement.setString(5, admin.getDesignation());
		statement.setString(6, admin.getAddress());
		statement.setString(7, admin.getPassword());
		statement.executeUpdate();
		connection.close();
	}

	@Override
	public Admin findAdminbyEmail(String email) throws ClassNotFoundException, SQLException {

		connection = DBConnection.getConnection();
		String sql = " SELECT * FROM tbl_admin WHERE email =  '" + email + "'";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);
		Admin admin = new Admin();
		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			admin.setName(rs.getString("name"));
			admin.setId(rs.getString("id"));
			admin.setAddress(rs.getString("address"));
			admin.setEmail(rs.getString("email"));
			admin.setPhone(rs.getLong("phone"));
			admin.setPassword(rs.getString("password"));
			admin.setDesignation(rs.getString("designation"));
		}
		connection.close();
		return admin;
	}

}
