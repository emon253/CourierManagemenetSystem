package service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import domain.Employee;
import domain.User;
import dto.EmployeeDTO;
import dto.LoginDTO;
import repository.EmployeeRepository;

public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeRepository repository;

	public EmployeeServiceImpl(EmployeeRepository repository) {
		this.repository = repository;
	}

	@Override
	public void saveAdmin(EmployeeDTO employeeDto)
			throws NoSuchAlgorithmException, ClassNotFoundException, SQLException {
		Employee admin = new Employee();
		admin.setName(employeeDto.getName());
		admin.setId(employeeDto.getId());
		admin.setEmail(employeeDto.getEmail());
		admin.setPhone(employeeDto.getPhone());
		admin.setAddress(employeeDto.getAddress());
		admin.setDesignation(employeeDto.getDesignation());
		admin.setPassword(PasswordEncryptor.getInstance().encriptPassword(employeeDto.getPassword()));
		repository.save(admin);
	}

	@Override
	public boolean isEmailExist(String email) throws ClassNotFoundException, SQLException {
		return false;
	}

	@Override
	public Employee verifyAdmin(LoginDTO loginDto)
			throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, UserPrincipalNotFoundException {
		String email = loginDto.getEmail();
		String password = PasswordEncryptor.getInstance().encriptPassword(loginDto.getPassword());

		Employee employee = repository.findAdminbyEmail(email);
		if (password.equals(employee.getPassword())) {

			return employee;

		} else
			throw new UserPrincipalNotFoundException("Incorrect Username or password");

	}

	@Override
	public List<Employee> findAllEmployees() throws SQLException, ClassNotFoundException {
		return repository.findAllEmployee();
	}

	@Override
	public List<Employee> searchEmployee(String key) throws SQLException, ClassNotFoundException {
		List<Employee> list = repository.findAllEmployee();
		List<Employee> newList = new ArrayList<>();
		Gson json = new Gson();

		for (Employee employee : list) {
			if (employee.getId().contains(key) || employee.getName().toLowerCase().contains(key)) {
				newList.add(employee);
			}
		}

		return newList;
	}
}
