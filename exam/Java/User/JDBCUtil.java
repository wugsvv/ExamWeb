package User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.mysql.cj.protocol.Resultset;

public class JDBCUtil {

	private static String url = "jdbc:mysql://localhost:3307/exam?serverTimezone=GMT";
	private static String user = "root";
	private static String password = "123456";
	private static Connection coon = null;
	static {
		try {

			
				Class.forName("com.mysql.cj.jdbc.Driver");
				

			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getCoon() {

		try {

			if (null == coon || coon.isClosed()) {
				
				coon = DriverManager.getConnection(url, user, password);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return coon;
	}
	public static void close(Connection coon,PreparedStatement pstmt,ResultSet rs)
	
	{
		try {
			if(null!=rs)
			{
				 rs.close();
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally {
			try {
				if(null!=pstmt)
				{
					pstmt.close();
				}
			}catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
}
