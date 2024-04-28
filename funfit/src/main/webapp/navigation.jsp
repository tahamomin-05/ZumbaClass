<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Dancing Dreams by Yamin</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link" href="addparticipant.jsp">Add Participant</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="displayParticipants.jsp">Display Participants</a>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link" href="addbatch.jsp">Add Batch</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="displaybatches.jsp">Display Batches</a>
        </li>
        
       
      </ul>
      <form class="d-flex" role="search" action="SearchServlet?pid=pid">
        <input class="form-control me-2" type="search" name="pid" placeholder="Enter ID.." aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>