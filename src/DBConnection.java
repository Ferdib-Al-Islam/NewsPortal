import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection getConnection() {
		
		Connection conn = null;
		
		try {
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsportal", "ferdib", "123456");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	

}
