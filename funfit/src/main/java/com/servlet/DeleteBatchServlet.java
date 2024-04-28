package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Batch;
import com.entity.Participant;
import com.provider.FactoryProvider;


public class DeleteBatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bid= Integer.parseInt(request.getParameter("bid"));
		
		Session session= FactoryProvider.getFactory().openSession();
		
		Transaction tx =session.beginTransaction();
		
		Batch bat = session.get(Batch.class, bid);
		
		
		session.delete(bat);
		tx.commit();
		
		response.sendRedirect("displaybatches.jsp");
		
		
		
	}

	
	

}