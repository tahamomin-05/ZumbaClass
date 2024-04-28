<%@page import="com.entity.Batch"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.provider.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.servlet.*"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Dancing Dreams - Display Batches</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	
   <% 
   Session ses = FactoryProvider.getFactory().openSession();
   Query qry =  ses.createQuery("from Batch");
   List<Batch> ls= qry.list();
   
   for(Batch bat :ls)
   {
   
   %>
    
    <div class="container">
    <div class="card mt-3">
    <img class="card-img-top m-4" style="max-width:70px;" src="css/bicon.jpg" class="card-img-top" alt="...">
	
	<div class="cord-body">
	
	<h5 class="card-text"><b>Batch Code : <%= bat.getBid() %></b></h5>
	<h5 class="card-text"><b>Instructor : <%= bat.getInstructor() %></b></h5>
	<h5 class="card-text"><b>Fees : <%= bat.getFees() %></b></h5>
	<h5 class="card-text"><b>Total Participants : <%= bat.getTotalParticipants() %></b></h5>
	<h5 class="card-text"><b>time : <%= bat.getTime() %></b></h5>
	
	<a href="DeleteBatchServlet?bid=<%=bat.getBid()%>" class="btn btn-danger">Delete</a>
	
	</div>
	
	
    </div>
    </div>
    <% 
   }
    %>
  
    
    
    </body>
    
    </html>