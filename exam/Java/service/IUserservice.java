package service;

import bean.User;

/**
 * @author ����
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
