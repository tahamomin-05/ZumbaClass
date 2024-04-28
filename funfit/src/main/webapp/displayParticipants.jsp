<%@page import="com.entity.Participant"%>
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
    
    
    <title>Dancing Dreams - Display Participants</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	
   <% 
   Session ses = FactoryProvider.getFactory().openSession();
   Query qry =  ses.createQuery("from Participant");
   List<Participant> ls= qry.list();
   
   for(Participant par :ls)
   {
   		Batch batch = par.getBatch();
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
	
	<h5 class="card-text"><b>Batch Details : </b></h5>
	
	<h5 class="card-text"><b>Batch Code : <%= batch.getBid() %></b></h5>
	<h5 class="card-text"><b>Instructor : <%= batch.getInstructor() %></b></h5>
	<h5 class="card-text"><b>Fees : <%= batch.getFees() %></b></h5>
	<h5 class="card-text"><b>Total Participants : <%= batch.getTotalParticipants() %></b></h5>
	<h5 class="card-text"><b>time : <%= batch.getTime() %></b></h5>
	
	<a href="DeleteServlet?pid=<%=par.getPid()%>" class="btn btn-danger">Delete</a>
	
	</div>
	
	
    </div>
    </div>
    <% 
   }
    %>
  
    
    
    </body>
    
    </html>