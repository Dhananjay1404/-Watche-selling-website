package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOimpl;
import com.DB.Dbconnect1;
@WebServlet("/remove_watch")
public class RemoveWatchCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bid=Integer.parseInt(req.getParameter("wid"));
		int uid=Integer.parseInt(req.getParameter("uid"));
		CartDAOimpl dao=new CartDAOimpl(Dbconnect1.getConn());
		boolean f=dao.deletewatch(bid,uid);
		HttpSession session=req.getSession();
		
		if(f)
		{
			session.setAttribute("succMsg","watch Removed from cart");
			resp.sendRedirect("checkout.jsp");
			//session.setAttribute("failedMsg","try again");
			//resp.sendRedirect("checkout.jsp");
		}else
		{
			//session.setAttribute("succMsg","watch Removed from cart");
			//resp.sendRedirect("checkout.jsp");
			session.setAttribute("failedMsg","try again");
			resp.sendRedirect("checkout.jsp");
		}
	}

}
