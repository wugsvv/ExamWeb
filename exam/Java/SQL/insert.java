package SQL;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class insert {

	private static String url="jdbc:mysql://localhost:3307/exam?serverTimezone=GMT";
	private static String user="root";
	private static String password="123456";
	public static void main(String [] agrs)
	{
		//�û�ע��
		Scanner sc=new  Scanner(System.in);
		System.out.print("�������û��ǳ�:");
		String nickname=sc.next();
		System.out.print("�������Ա�:");
		int sex=sc.nextInt();
		System.out.print("����������:");
		String psw=sc.next();
		boolean result=register(nickname,sex,psw);
		if(result)
		{
			System.out.println("��ϲ��ע��ɹ�");
			
		}
		else {
			System.out.println("��ϲ��ע��ʧ��");
			
		}
		
	}
	public  static boolean register(String nickname,int sex,String psw)
	{
		int i=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection coon=DriverManager.getConnection(url,user,password);
			String sql="INSERT INTO user(nickname,sex,password) VALUES('"+nickname+"',"+sex+",'"+psw+"');";
			PreparedStatement pstmt=coon.prepareStatement(sql);
			i=pstmt.executeUpdate();
			pstmt.close();
			coon.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i>0?true:false;
		
	}
}
