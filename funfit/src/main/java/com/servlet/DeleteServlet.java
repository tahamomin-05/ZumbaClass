package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Participant;
import com.provider.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pid= Integer.parseInt(request.getParameter("pid"));
		
		Session session= FactoryProvider.getFactory().openSession();
		
		Transaction tx =session.beginTransaction();
		
		Participant par = session.get(Participant.class, pid);
		par.getName();
		par.setBatch(null);
		session.delete(par);
		tx.commit();
		
		response.sendRedirect("displayParticipants.jsp");
		
		
		
	}

	
	

}