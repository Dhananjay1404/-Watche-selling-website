package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.WatchDAoImpl;
import com.DB.Dbconnect1;

@WebServlet("/delete")
public class WatchDelete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			WatchDAoImpl dao= new WatchDAoImpl(Dbconnect1.getConn());
			boolean f=dao.deleteWatches(id);
			HttpSession session=req.getSession();
			if(f)
    		{
    			session.setAttribute("succMsg","Watch not delete");
    			resp.sendRedirect("../admin/all_watches.jsp");
//    			session.setAttribute("failedMsg","Not updated");
//    			resp.sendRedirect("admin/all_watches.jsp");
    		}else
    		{
  			session.setAttribute("succMsg","Watch delete Successfully");
    			resp.sendRedirect("admin/all_watches.jsp");
    		}
	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
