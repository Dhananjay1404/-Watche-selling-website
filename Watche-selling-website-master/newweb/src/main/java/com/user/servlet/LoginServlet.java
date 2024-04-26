package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOimpl;
import com.DB.Dbconnect1;
import com.entity.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			 UserDAOimpl d= new UserDAOimpl(Dbconnect1.getConn());
			 HttpSession session=req.getSession();
			 
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			System.out.println(email+" "+password);
			
			if("admin@gmail.com".equals(email) && "admin".equals(password))
			{
				User us=new User();
				us.setName("Admin");
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/home.jsp");
			}
			else
			{
				User us=d.login(email, password);
				if(us!=null)
				{
					session.setAttribute("userobj", us);
					resp.sendRedirect("index.jsp");
				}else 
				{
					session.setAttribute("failedMsg","Email or Password Invalid");
					resp.sendRedirect("login.jsp");
				}
		
				resp.sendRedirect("home.jsp");
			}
			
			
		} catch (Exception e) {
         e.printStackTrace();
		}
	}
}


