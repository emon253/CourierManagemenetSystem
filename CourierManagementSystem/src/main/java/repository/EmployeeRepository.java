package repository;

import java.sql.SQLException;
import java.util.List;

import domain.Employee;
import domain.User;

public interface EmployeeRepository {
	void save(Employee employee) throws ClassNotFoundException, SQLException;
	Employee findAdminbyEmail(String email) throws ClassNotFoundException, SQLException;
	List<Employee> findAllEmployee() throws SQLException, ClassNotFoundException;
}
