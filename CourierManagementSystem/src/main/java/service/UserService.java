package service;

import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import domain.User;
import dto.LoginDTO;
import dto.UserDTO;
import repository.UserRepository;

public interface UserService {
	void saveUser(UserDTO userDto) throws NoSuchAlgorithmException, ClassNotFoundException, SQLException;

	boolean isUniqueUserName(String userName) throws ClassNotFoundException, SQLException;

	boolean isEmailExist(String email) throws ClassNotFoundException, SQLException;

	User verifyUser(LoginDTO userDto) throws NoSuchAlgorithmException, ClassNotFoundException, SQLException, UserPrincipalNotFoundException;

}
