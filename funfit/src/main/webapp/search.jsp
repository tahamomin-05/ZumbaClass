<!doctype html>
<%@page import="com.entity.Participant"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.provider.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Dancing Dreams</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	
   	<%
   		try
   	{
   			Participant par = (Participant)application.getAttribute("par");
   			if(par!=null)
   			{
   				
   	%>
   	<div class="container">
    <div class="card mt-3">
    <img class="card-img-top m-4" style="max-width:70px;" src="css/picon.jpg" class="card-img-top" alt="...">
	
	<div class="cord-body">
	
	<h5 class="card-text"><b>Participant's ID : <%= par.getPid() %></b></h5>
	<h5 class="card-text"><b>Name : <%= par.getName() %></b></h5>
	<h5 class="card-text"><b>Gender : <%= par.getGender() %></b></h5>
	<h5 class="card-text"><b>Address : <%= par.getAddress() %></b></h5>
	<h5 class="card-text"><b>Email : <%= par.getEmail() %></b></h5>
	
	<a href="DeleteServlet?pid=<%=par.getPid()%>" class="btn btn-danger">Delete</a>
	<a href="UpdateServlet?pid=<%=par.getPid()%>" class="btn btn-primary">Update</a>
	</div>
	
	
    </div>
    </div>
   	
   	<%		}
   			else
   			{
   				
   				
   				
   	%>
   	
   	<div class="container">
   	<div class="card mt-3">
   	<img class="card-img-top m-4" style="max-width:70px;" src="css/eicon.png" class="card-img-top" alt="...">
	
	
	<div class="card-body">
	
	<h5 class="card-text"><b>Sorry ! Invalid ID</b></h5>
	</div>
   	
   	</div>
   	
   	</div>
   	
   	<% 
   			}
   	}
   	catch(Exception e)
   	{
   		
   	}
   	
   	
   	%>
   
   	
  
    </body>
    
    </html>