<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MyLabTest1</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  	<link href="styles.css" rel="stylesheet">  
  	<style>
    .btn-primary {
      background-image: linear-gradient(to right, #FF00FF, #ff6381); /* Update button gradient colors */
      border: none; /* Remove button border */
    }
    </style>
  </head>
<body>


 <% 
    
    String loggedInUserType = (String) session.getAttribute("loggedInUserType");
       if ("lab_receptionist".equals(loggedInUserType)) { %>
     
      
     
  <div class="container mt-5">
        <h2 class="text-center">Patient Registration</h2>
        <form action="action/" method="POST">
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstName" name="firstName" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastName" name="lastName" required>
                    </div>
                </div>
            </div>
      <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="contactNumber" class="form-label">Contact Number</label>
                        <input type="text" class="form-control" id="contactNumber" name="contactNumber" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <textarea class="form-control" id="address" name="address" required></textarea>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label>
                        <select class="form-select" id="gender" name="gender" required>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="nic" class="form-label">NIC</label>
                        <input type="text" class="form-control" id="nic" name="nic" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="dateOfBirth" class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" required>
                    </div>
                </div>
            </div> 
             <!-- Hidden field to specify the action -->
    <input type="hidden" name="action" value="insertPatient">
       <div class="d-flex justify-content-start mt-4">
   <button type="submit" class="btn btn-primary me-2">Register</button>   
 <a href="lab_receptionist_dashboard" class="btn btn-secondary">Cancel</a>
</div>
        </form>
    </div>
    
        
    
      <% } else {
      // User is not logged in, redirect to login page
      response.sendRedirect("login");
  } %>
    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>