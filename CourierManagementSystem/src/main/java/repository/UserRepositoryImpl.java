package repository;

import java.sql.*;

import dbconnection.DBConnection;
import domain.User;
import dto.Feedback;

public class UserRepositoryImpl implements UserRepository {
	private Connection connection;

	@Override
	public void save(User user) throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		String sql = "INSERT INTO tbl_user(`name`,`userName`,`email`,`phone`,`address`,`password`)VALUES(?,?,?,?,?,?); ";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, user.getName());
		statement.setString(2, user.getUserName());
		statement.setString(3, user.getEmail());
		statement.setLong(4, user.getPhone());
		statement.setString(5, user.getAddress());
		statement.setString(6, user.getPassword());
		statement.executeUpdate();
		connection.close();
	}

	@Override
	public User findUserbyEmail(String email) throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		String sql = " SELECT * FROM tbl_user WHERE email =  '" + email + "'";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);
		User user = new User();
		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			user.setName(rs.getString("name"));
			user.setUserName(rs.getString("userName"));
			user.setAddress(rs.getString("address"));
			user.setEmail(rs.getString("email"));
			user.setPhone(rs.getLong("phone"));
			user.setPassword(rs.getString("password"));
		}
		connection.close();
		return user;
	}

	@Override
	public User findUserByUserName(String userName) throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		String sql = " SELECT * FROM tbl_user WHERE userName = ? ";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, userName);

		User user = new User();
		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			user.setName(rs.getString("name"));
			user.setUserName(rs.getString("userName"));
			user.setAddress(rs.getString("address"));
			user.setEmail(rs.getString("email"));
			user.setPhone(rs.getLong("phone"));
			user.setPassword(rs.getString("password"));

		}

		connection.close();
		return user;
	}

	@Override
	public void saveFeedback(Feedback feedback) throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		String sql = "INSERT INTO tbl_feedback (`name`,`email`,`feedbackMsg`,`time`) VALUES(?,?,?,?);";
		PreparedStatement statement = connection.prepareStatement(sql);
		if(feedback.getUser() != null) {
			statement.setString(1, feedback.getUser().getName());

		}else {
			statement.setString(1, "GUEST");

		}
		statement.setString(2, feedback.getEmail());
		statement.setString(3, feedback.getMessage());
		statement.setString(4, feedback.getTime());
		statement.executeUpdate();
		connection.close();
	}

}
