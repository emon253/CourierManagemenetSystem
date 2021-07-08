package service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import domain.Admin;
import dto.AdminDTO;
import dto.LoginDTO;

public interface AdminService {
	void saveAdmin(AdminDTO adminDto) throws NoSuchAlgorithmException, ClassNotFoundException, SQLException;

	boolean isEmailExist(String email) throws ClassNotFoundException, SQLException;

	Admin verifyAdmin(LoginDTO loginDto) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, UserPrincipalNotFoundException;
}
