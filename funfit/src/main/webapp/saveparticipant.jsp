<%@page import="com.entity.Participant"%>
<%@page import="com.entity.Batch"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.provider.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Dancing Dreams - Save Participant</title>
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
   	
   	
   	
   	int pid = Integer.parseInt(request.getParameter("pid"));
   	int bid = Integer.parseInt(request.getParameter("bid"));
	
   	Batch batch = ses.get(Batch.class, bid);
   	
   	String name= request.getParameter("name");
   	String gender = request.getParameter("gender");
   	String address = request.getParameter("address");
   	String email = request.getParameter("email");
   	
   	batch.setTotalParticipants(batch.getTotalParticipants()+1);
   	Participant par = new Participant(pid,batch,name,gender,address,email);
   	ses.save(par);
   	
   	tx.commit();
   	ses.close();
   	%>
   	
   	<br><br>
   	
   	<center><h2>Record Saved Successfully </h2></center>
   	<center><h2><a href='displayParticipants.jsp'>View Records</a></h2></center>
    
    </body>
    
    </html>