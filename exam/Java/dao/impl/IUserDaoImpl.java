package dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

import User.JDBCUtil;
import bean.User;
import dao.IUserDao;

public class IUserDaoImpl implements IUserDao {
	public int register(User user) {
		Connection coon = JDBCUtil.getCoon();
		PreparedStatement pstmt = null;
		String sql = "insert into user(nickname,password1,password2,number,phone) values(?,?,?,?,?)";
		int i = 0;
		try {
			pstmt = coon.prepareStatement(sql);
			pstmt.setString(1, user.getNickname());
			pstmt.setString(2, user.getPassword1());
			pstmt.setString(3, user.getPassword2());
			pstmt.setString(4, user.getNumber());
			pstmt.setString(5, user.getPhone());

			i = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(null, pstmt, null);
		}
		return i;
	}

	public int login(User user) {
		Connection coon = JDBCUtil.getCoon();
		String sql = "select uid from user where number=? and password1=?";
		int uid = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = coon.prepareStatement(sql);
			pstmt.setString(1, user.getNumber());
			pstmt.setString(2, user.getPassword1());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				uid = rs.getInt("uid");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return uid;
	}

}
