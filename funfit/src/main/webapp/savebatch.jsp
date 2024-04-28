<%@page import="com.entity.Batch"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.provider.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Dancing Dreams - Save Batch</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	
   	<%
   	SessionFactory factory = FactoryProvider.getFactory();
   	Session ses= factory.openSession();
   	Transaction tx= ses.beginTransaction();
   	
   	
   	
   	int bid = Integer.parseInt(request.getParameter("bid"));
   	String instructor= request.getParameter("instructor");
   	int fees = Integer.parseInt(request.getParameter("fees"));
   	int totalParticipants = Integer.parseInt(request.getParameter("totalParticipants"));
   	LocalDateTime time = LocalDateTime.parse(request.getParameter("time"),DateTimeFormatter.ISO_DATE_TIME);
   	
   	Batch bat = new Batch(bid,instructor,fees,totalParticipants,time);
   	ses.save(bat);
   	
   	tx.commit();
   	ses.close();
   	%>
   	
   	<br><br>
   	
   	<center><h2>Record Saved Successfully </h2></center>
   	<center><h2><a href='displaybatches.jsp'>View Records</a></h2></center>
    
    </body>
    
    </html>