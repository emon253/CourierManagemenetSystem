package repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbconnection.DBConnection;
import domain.Employee;
import domain.ParcelRequest;
import domain.User;

public class EmployeeRepositoryImpl implements EmployeeRepository {
	private Connection connection;

	@Override
	public void save(Employee employee) throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		String sql = "INSERT INTO tbl_employee(`id`,`name`,`email`,`phone`,`designation`,`address`,`password`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, employee.getId());
		statement.setString(2, employee.getName());
		statement.setString(3, employee.getEmail());
		statement.setLong(4, employee.getPhone());
		statement.setString(5, employee.getDesignation());
		statement.setString(6, employee.getAddress());
		statement.setString(7, employee.getPassword());
		statement.executeUpdate();
		connection.close();
	}

	@Override
	public Employee findAdminbyEmail(String email) throws ClassNotFoundException, SQLException {

		connection = DBConnection.getConnection();
		String sql = " SELECT * FROM tbl_employee WHERE email =  '" + email + "'";
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);
		Employee admin = new Employee();
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

	@Override
	public List<Employee> findAllEmployee() throws SQLException, ClassNotFoundException {
		String sql = " SELECT * FROM tbl_employee;";
		connection = DBConnection.getConnection();
		java.sql.PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		List<Employee> list = new ArrayList<Employee>();
		while (rs.next()) {
			Employee employee = extractEmployees(rs);
			list.add(employee);
		}
		connection.close();

		return list;
	}

	private Employee extractEmployees(ResultSet rs) throws SQLException {
		Employee employee = new Employee();
		employee.setName(rs.getString("name"));
		employee.setId(rs.getString("id"));
		employee.setEmail(rs.getString("email"));
		employee.setDesignation(rs.getString("designation"));
		employee.setPhone(rs.getLong("phone"));
		employee.setAddress(rs.getString("address"));

		return employee;
	}

}
