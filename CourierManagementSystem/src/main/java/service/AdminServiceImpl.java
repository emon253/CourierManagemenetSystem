package service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import domain.Admin;
import domain.User;
import dto.AdminDTO;
import dto.LoginDTO;
import repository.AdminRepository;

public class AdminServiceImpl implements AdminService {
	private AdminRepository repository;

	public AdminServiceImpl(AdminRepository repository) {
		this.repository = repository;
	}

	@Override
	public void saveAdmin(AdminDTO adminDto) throws NoSuchAlgorithmException, ClassNotFoundException, SQLException {
		Admin admin = new Admin();
		admin.setName(adminDto.getName());
		admin.setId(adminDto.getId());
		admin.setEmail(adminDto.getEmail());
		admin.setPhone(adminDto.getPhone());
		admin.setAddress(adminDto.getAddress());
		admin.setDesignation(adminDto.getDesignation());
		admin.setPassword(PasswordEncryptor.getInstance().encriptPassword(adminDto.getPassword()));
		repository.save(admin);
	}

	@Override
	public boolean isEmailExist(String email) throws ClassNotFoundException, SQLException {
		return false;
	}

	@Override
	public Admin verifyAdmin(LoginDTO loginDto)
			throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, UserPrincipalNotFoundException {
		String email = loginDto.getEmail();
		String password = PasswordEncryptor.getInstance().encriptPassword(loginDto.getPassword());

		Admin admin = repository.findAdminbyEmail(email);
		if (password.equals(admin.getPassword())) {

			return admin;

		} else
			throw new UserPrincipalNotFoundException("Incorrect Username or password");

	}

}
