package com.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Participant;
import com.provider.FactoryProvider;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pid = Integer.parseInt(request.getParameter("pid"));
		
		SessionFactory sf=FactoryProvider.getFactory();
		
		Session session = sf.openSession();
		
		Participant par = session.get(Participant.class, pid);
		
		if(par!=null)
		{
			ServletContext context = getServletContext();
			context.setAttribute("par", par);
		}
		
		else
		{
			ServletContext context = getServletContext();
			context.setAttribute("par", null);
		}
		
		session.close();
		response.sendRedirect("search.jsp");
	}

	
	
}