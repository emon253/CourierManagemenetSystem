package repository;

import java.sql.SQLException;

import domain.Admin;
import domain.User;

public interface AdminRepository {
	void save(Admin admin) throws ClassNotFoundException, SQLException;
	Admin findAdminbyEmail(String email) throws ClassNotFoundException, SQLException;
}
