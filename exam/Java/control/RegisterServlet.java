package control;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.IUserservice;
import service.impl.IUserserviceImpl;

import bean.User;
@WebServlet("/Register")
public class RegisterServlet extends HttpServlet{
	IUserservice iuserServices = new IUserserviceImpl();
	protected void doGet(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException
	{
		System.out.println("----doget()----");
		doPost(req,resp);
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
		String number=request.getParameter("number");
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		String nickname=request.getParameter("nickname");
		String phone=request.getParameter("phone");
		//System.out.println(nickname);
		User user=new User(0,number,password1,password2,nickname,phone);
		boolean result = iuserServices.register(user);
		request.getRequestDispatcher("exam.html").forward(request, response);
	}

}
