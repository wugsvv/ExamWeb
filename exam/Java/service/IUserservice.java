package service;

import bean.User;

/**
 * @author ½­¾¸
 *
 */

public interface IUserservice {
	
	/**
	 * @param user
	 * @return
	 */
	public boolean register(User user);
	public boolean login(User user);

}
