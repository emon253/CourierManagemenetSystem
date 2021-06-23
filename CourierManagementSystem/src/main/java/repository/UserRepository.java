package repository;

import java.sql.SQLException;

import domain.User;

public interface UserRepository {
	void save(User user) throws ClassNotFoundException, SQLException;
	User findUserbyEmail(String email) throws ClassNotFoundException, SQLException;
	User findUserByUserName(String userName) throws ClassNotFoundException, SQLException;
}
