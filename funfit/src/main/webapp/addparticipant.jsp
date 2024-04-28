<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <title>Dancing Dreams - Add Participant</title>
    <%@ include file="header_footer.jsp" %>
    </head>
    <body>
   	<div class="container">
   	<%@ include file="navigation.jsp" %>
   	</div>
   	<br>
   	<div class="container">
	
	<form action="saveparticipant.jsp">
  <div class="mb-3 form-group">
    <label for="exampleInputEmail1" class="form-label">Enter Participant's ID</label>
    <input type="text"  name="pid" class="form-control" />
   
  </div>
  
  <div class="mb-3 form-group">
    <label for="exampleInputEmail1" class="form-label">Enter Batch Code</label>
    <input type="text"  name="bid" class="form-control" />
   
  </div>
  
   <div class="mb-3 form-group">
    <label for="exampleInputEmail1" class="form-label">Enter Participant's Full Name</label>
    <input type="text"  name="name" class="form-control" />
   
  </div>
  
   <div class="mb-3 form-group">
    <label for="exampleInputEmail1" class="form-label">Select Gender</label>
    <div class="form-check">
    <input type="radio"  name="gender" class="form-check-input" value="male" />
    <label class="form-check-label" for="exampleRadio1">Male</label>
    
    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
    <br>
    <input type="radio"  name="gender" class="form-check-input" value="female" />
    <label class="form-check-label" for="exampleRadio1">Female</label>
    
    </div>
    <br>
     <div class="mb-3 form-group">
    <label for="exampleInputEmail1" class="form-label">Enter  Address</label>
    <input type="text"  name="address" class="form-control" />
   
  </div>
  
   
  
   <div class="mb-3 form-group">
    <label for="exampleInputEmail1" class="form-label">Enter Email ID</label>
    <input type="text"  name="email" class="form-control" />
   
  </div>
  
  <button type="submit" class="btn btn-primary" >Submit</button>
   
  </div>
 
</form>   	
   	</div>
    
    </body>
    
    </html>