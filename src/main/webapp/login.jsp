<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ABC Laboratory</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <style type="text/css">
    .container {
      margin: 0;
      position: relative;
    }

    .login-form-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-form {
      max-width: 800px;
      width: 30%;
      background-color: #ffffff;
    }

    .login-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-control {
      margin-bottom: 20px;
    }

    .btn-login {
      width: 100%;
      background-image: linear-gradient(to right, #FF00FF, #ff6381);
      border: none;
    }

    .student-id {
      position: absolute;
      top: 10px;
      right: 10px;
      color: black;
    }

    .login-image {
      max-width: 300px;
      margin-right: 20px;
    }

    body {
      overflow: hidden;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="login-form-container">
    <img src="https://images.pexels.com/photos/8442604/pexels-photo-8442604.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Image" class="login-image">
    <div class="login-form">
      <h2>Login</h2>
      <form action="action/" method="POST">
        <div class="form-group">
          <select class="form-control" name="userType" required>
            <option value="">Select User Type</option>
            <option value="patient">Patient</option>
            <option value="lab_receptionist">Lab Receptionist</option>
            <option value="lab_technician">Lab Technician</option>
            <option value="doctor">Doctor</option>
          </select>
        </div>
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Username" name="username" required>
        </div>
        <div class="form-group">
          <input type="password" class="form-control" placeholder="Password" name="password" required>
        </div>
        <!-- Display error message -->
        <% if (request.getAttribute("errorMessage") != null) { %>
          <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
        <% } %>
        <input type="hidden" name="action" value="login">
        <button type="submit" class="btn btn-primary btn-login">Login</button>
      </form>
      <div class="mt-2">
        <a href="https://docs.google.com/document/d/1A8--3XZEo912lBvMB8ZbPCvCaJ-g4cWXoBlwVXaE7LQ/edit?usp=sharing" target="_blank">Tap here to get test login credentials</a>
      </div>
    </div>
  </div>
</div>
<div class="student-id">Student ID: KG/BSCSD/12/19</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
