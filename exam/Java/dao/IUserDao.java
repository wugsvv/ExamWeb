package dao;

import org.apache.tomcat.util.descriptor.web.LoginConfig;

import bean.User;

public interface IUserDao {
	public int register(User user);
	public int login(User user);

}
