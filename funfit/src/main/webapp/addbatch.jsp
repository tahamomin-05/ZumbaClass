<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Dancing Dreams - Add Batch</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	<br>
   	<div class="container">
	
	<form action="savebatch.jsp">
  <div class="mb-3 form-group">
    <label for="bid" class="form-label">Enter Batch Code</label>
    <input type="text"  name="bid" class="form-control" />
   
  </div>
  
   <div class="mb-3 form-group">
    <label for="instructor" class="form-label">Enter Instructor's Full Name</label>
    <input type="text"  name="instructor" class="form-control" />
   
  </div>
  
   <div class="mb-3 form-group">
    
    <div class="mb-3 form-group">
    <label for="fees" class="form-label">Enter Fees</label>
    <input type="text"  name="fees" class="form-control" />
    </div>
    
    <div class="mb-3 form-group">
    <label for="totalParticipants" class="form-label">Enter Total Participants</label>
    <input type="text"  name="totalParticipants" class="form-control" />
    </div>
    
    <div class="mb-3 form-group">
    <label for="time" class="form-label">Enter Time</label>
    <input type="datetime-local"  name="time" class="form-control" />
    </div>
    
  <button type="submit" class="btn btn-primary" >Submit</button>
   
  </div>
 
</form>   	
   	</div>
    
    </body>
    
    </html>