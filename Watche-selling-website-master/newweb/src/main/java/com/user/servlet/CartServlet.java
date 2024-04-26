package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOimpl;
import com.DAO.WatchDAoImpl;
import com.DB.Dbconnect1;
import com.entity.Cart;
import com.entity.WatchBtls;
@WebServlet("/Cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int wid=Integer.parseInt(req.getParameter("wid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			WatchDAoImpl dao=new WatchDAoImpl(Dbconnect1.getConn());
			WatchBtls b=dao.getWatchById(wid);
			
			Cart c= new Cart();
			c.setWid(wid);
			c.setUserId(uid);
			c.setWatcname(b.getWatchName());
			c.setModel(b.getModel());
			c.setPrice(b.getPrice());
			c.setTotalPrice(b.getPrice());
			CartDAOimpl dao2= new CartDAOimpl(Dbconnect1.getConn());
			boolean f=dao2.addCart(c);
			HttpSession session=req.getSession();
			
			if(f)
			{
				session.setAttribute("addCart","Books successfully added");
				resp.sendRedirect("Rolex.jsp");
				//System.out.println("add to cart");
			}else
			{
				session.setAttribute("failed","went wrong ");
				resp.sendRedirect("Rolex.jsp");
				//System.out.println("not added to cart");
			}
			
			
		} catch (Exception e) {
		  e.printStackTrace();
		}
	}

}
