<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ABC Laboratory</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link href="styles.css" rel="stylesheet">
  <style>
    body {
      background-image: url('https://images.pexels.com/photos/8325985/pexels-photo-8325985.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
      background-size: cover;
      background-position: center;
      overflow: hidden; /* Make the screen non-scrollable */
    }
    .container {
      max-width: 800px;
      margin: 100px auto;
      text-align: center;
      color: white;
    }
    h1 {
      margin-bottom: 20px;
    }
    p {
      margin-bottom: 10px;
    }
    ul {
      list-style-type: none;
      padding: 0;
    }
    li {
      margin-bottom: 10px;
    }
    .btn-primary {
      background-image: linear-gradient(to right, #FF00FF, #ff6381);
      border: none;
    }
    .student-id {
      position: absolute;
      top: 10px;
      right: 10px;
      color: black;
    }
    .services {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }
    .card {
      width: calc(30% - 20px);
      margin-bottom: 20px;
    }
    .service {
      background-image: linear-gradient(to right, #FF00FF, #ff6381);
      color: white;
      border-radius: 10px;
      text-align: center;
    }
  </style>
</head>
<body>

<div class="container">
  <h1>Welcome to ABC Lab Appointment System</h1>
  <h5>This is the landing page of this web application.</h5>
  <h5>Here, we provide a brief introduction to this application and its features.</h5>
  <h5>For example, you can provide links to login or register pages:</h5>
  <div class="row">
    <div class="col-6 mx-auto">
      <ul class="list-unstyled">
        <li><a href="app/login" class="btn btn-primary mt-4 btn-lg btn-block">Get Started</a></li>
      </ul>
    </div>
  </div>
  <div class="student-id">Student ID: KG/BSCSD/12/19</div>

  <!-- Our Services Section -->
  <h2>Our Services</h2>
  <div class="services">
    <div class="card" style="width: 15rem;">
      <div class="card-body">
        <h5 class="card-title">Medical Test</h5>
        <p class="card-text">Blood Test, Kidney Function Test,  Thyroxine Test</p>
      </div>
    </div>
    <div class="card" style="width: 15rem;">
      <div class="card-body">
        <h5 class="card-title">24/7 Support</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
    <div class="card" style="width: 15rem;">
      <div class="card-body">
        <h5 class="card-title">Report Generation/ View Test Results</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
