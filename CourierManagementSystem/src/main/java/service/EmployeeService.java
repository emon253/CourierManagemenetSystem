package service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.List;

import domain.Employee;
import dto.EmployeeDTO;
import dto.LoginDTO;

public interface EmployeeService {
	void saveAdmin(EmployeeDTO employee) throws NoSuchAlgorithmException, ClassNotFoundException, SQLException;

	boolean isEmailExist(String email) throws ClassNotFoundException, SQLException;

	Employee verifyAdmin(LoginDTO loginDto) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, UserPrincipalNotFoundException;

	List<Employee> findAllEmployees() throws SQLException, ClassNotFoundException;
}
