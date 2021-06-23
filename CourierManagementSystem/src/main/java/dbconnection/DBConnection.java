package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static final String url = "jdbc:mysql://localhost:3306/cms?serverTimezone=UTC";
	private static final String user = "root";
	private static final String password = "";
	private static Connection mySQLConnection = null;

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			mySQLConnection = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mySQLConnection;

	}

	public static void disconnectSLQ() throws SQLException {

		mySQLConnection.close();
	}

}
