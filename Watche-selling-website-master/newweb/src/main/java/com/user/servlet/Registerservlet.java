package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DAO.UserDAOimpl;
import com.DB.Dbconnect1;
import com.entity.User;
@WebServlet("/Registerservlet")
public class Registerservlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			//System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			 User us= new User();
			 us.setName(name);
			 us.setEmail(email);
			 us.setPhoneno(phno);
			 us.setPassword(password);
			 
			 HttpSession session=req.getSession();
			 if(check!=null)
			 {
			 UserDAOimpl d= new UserDAOimpl(Dbconnect1.getConn());
			 boolean f=d.userRegister(us);
			 if(f)
			 {
				 //System.out.println("User Register Successfully");
				 session.setAttribute("failedMsg","Something wrong on server");
				 resp.sendRedirect("Register.jsp");
			 }else
			 {
				 session.setAttribute("succMsg","Register successfully");
				 resp.sendRedirect("Register.jsp");
				 
				// System.out.println("Plz try again...");
			 }
		}
			 else
		      {
			 session.setAttribute("failedMsg","please Check agree terms and conditions");
			 resp.sendRedirect("Register.jsp");
		   }
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
