package service.impl;

import java.awt.desktop.UserSessionEvent;

import bean.User;
import dao.impl.IUserDaoImpl;
import service.IUserservice;
import dao.IUserDao;
public class IUserserviceImpl implements IUserservice {
	private IUserDao  iuserDao=new IUserDaoImpl();
	public boolean register(User user) {
		//dao²ã
		int i=iuserDao.register(user);
		
		return i>0?true:false;
	}
	public boolean login(User user)
	{
		int uid=iuserDao.login(user);
		return uid>0?true:false;
	}

}
