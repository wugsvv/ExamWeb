package SQL;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.util.Util;

import bean.User;
import User.JDBCUtil;
public class select {

	private static String url="jdbc:mysql://localhost:3307/exam?serverTimezone=GMT";
	private static String user="root";
	private static String password="123456";
	public static void main(String [] agrs)
	{
		int sex=1;
		String nm="s";
		List<User> list=query(sex,nm);
		//for(集合元素类型，临时变量，集合)
		for(User u: list)
		{
			//System.out.println(u.getUid()+"\t"+u.getNickname()+"\t"+u.getSex()+"\t"+u.getPassword());
		}
		
	}
	public  static List<User> query(int sex,String nm)
	{
		List<User> list=new ArrayList<User>();
		Connection coon=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			coon=JDBCUtil.getCoon();
	
			String sql="select uid,nickname,sex,password from user where sex=? and nickname like ?";
			pstmt=coon.prepareStatement(sql);
			pstmt.setInt(1, sex);
			pstmt.setString(2, nm+"%");
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				
				/*int uid=rs.getInt(1);
				String nickname=rs.getString("nickname");
				int Sex=rs.getInt(3);
				String password=rs.getString(4);
				User user1=new User(uid,nickname,Sex,password);
				list.add(user1);*/
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(coon, pstmt, rs);
		}
		return list;
		
	}
}
