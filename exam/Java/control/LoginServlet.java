package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import dao.impl.IUserDaoImpl;
import service.IUserservice;
import service.impl.IUserserviceImpl;
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	IUserservice iuserServices = new IUserserviceImpl();
	protected void doGet(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException
	{
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
	{
		request.setCharacterEncoding("UTF-8");
		String number=request.getParameter("number");
		String password1=request.getParameter("password1");
		User user=new User(number,password1);
		boolean result=iuserServices.login(user);
		if(result) {
			request.getSession().setAttribute("number", number);
			response.sendRedirect("exam.jsp");
		}else {
			request.setAttribute("info","用户名或密码错误");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}
}
