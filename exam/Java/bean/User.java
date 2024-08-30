package bean;
import java.sql.ResultSet;
public class User {
	private int uid;
	private String nickname;
	private String password1;
	private String password2;
	private String number;
	private String phone;
	public User()
	{
		
	}
	public User(String number, String password1) {
		 
		
		this.number=number;
		this.password1=password1;
		
	
	}
	public User(int uid, String number, String password1, String password2,String nickname ,String phone) {
		 
		this.uid = uid;
		this.nickname = nickname;
		this.password1=password1;
		this.password2=password2;
		this.number=number;
		this.phone=phone;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	


	
	
}
