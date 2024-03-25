<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab Receptionist Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            font-family: Arial, sans-serif;
        }
        .top-section {
            background: linear-gradient(to right, #FF69B4, #FF1493);
            color: #fff;
            padding: 20px;
            position: relative; /* Make the top section a positioned container */
        }
        .logout-button {
            color: #FF69B4;
            border-color: #fff;
            position: absolute; /* Position the button */
            top: 10px; /* Distance from the top */
            right: 20px; /* Distance from the right */
            background-color: transparent; /* Transparent background */
            transition: all 0.3s ease; /* Smooth transition effect */
            border-radius: 5px; /* Add border radius */
            z-index: 1; /* Ensure the button is on top of other elements */
        }
        .logout-button:hover {
            color: #FF1493; /* Pink text color */
            background-color: #fff; /* White background color */
            border-color: #fff; /* White border color */
        }
        .logout-button:hover .btn-outline-primary {
            color: #FF1493; /* Pink text color */
            border-color: #fff; /* White border color */
        }
        .container {
            padding: 20px;
        }
        .section {
            display: none;
        }
        .selected-card {
            border: 2px solid #FF00FF;
        }
        .custom-card {
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-body {
            padding: 20px;
        }
        .btn-primary {
	      background-image: linear-gradient(to right, #FF69B4, #FF1493);/* Update button gradient colors */
	      border: none; /* Remove button border */
	    }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-outline-primary {
            color: #fff;
            border-color: #fff;
        }
        .btn-outline-primary:hover {
            color: #FF1493; /* Pink text color */
            border-color: #0056b3;
            background-color: #fff; /* Add white background on hover */
        }
        .input-group {
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 0;
        }
    </style>
</head>
<body>

<% 
String loggedInUserType = (String) session.getAttribute("loggedInUserType");
LabReceptionist loggedInUser = (LabReceptionist) session.getAttribute("loggedInUser");
if ("lab_receptionist".equals(loggedInUserType)) { %>

<div>

<div class="top-section">
    <div class="container">
        <h3>Welcome to the Lab Receptionist Dashboard</h3> 
        <p>Welcome to the Lab Receptionist Dashboard! Your gateway to efficient patient management and seamless appointment scheduling.</p>
    </div>
    

     <!-- Logout button -->
    <form action="action" method="POST" class="logout-button">
        <input type="hidden" name="action" value="logout">
        <button type="submit" class="btn btn-outline-primary btn-sm">Logout</button>
    </form>
    
    
   
</div>

<div class="container">


       

<div class="row">
    <div class="col-md-3">
        <div class="card mb-3" onclick="showSection('appointments')" id="appointmentsCard">
            <div class="card-body">
                <h5 class="card-title">Appointments</h5>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card mb-3" onclick="showSection('patients')" id="patientsCard">
            <div class="card-body">
                <h5 class="card-title">Patients</h5>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card mb-3" onclick="showSection('doctors')" id="doctorsCard">
            <div class="card-body">
                <h5 class="card-title">Doctors</h5>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card mb-3" onclick="showSection('technicians')" id="techniciansCard">
            <div class="card-body">
                <h5 class="card-title">Technicians</h5>
            </div>
        </div>
    </div>
</div>

<%-- Define sections for different data and function buttons --%>
<div id="appointmentsSection" class="section">
    <div class="row">
        <div class="col-md-4">
            <div class="d-flex justify-content-start">
                <h3>Appointments Section</h3>
            </div>
        </div>
        <div class="col-md-4">
            <div class="input-group mb-3">
                <input type="text" class="form-control" id="searchInputAppointments" placeholder="Search by ID" aria-label="Search" aria-describedby="basic-addon2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="d-flex justify-content-end">
                <a href="add_appointment" class="btn btn-primary">Add New Appointment</a>
            </div>
        </div>
    </div>

    <div class="table-responsive table-scrollable">
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Patient Username</th>
                    <th>Appointment Type</th>
                    <th>Description</th>
                    <th>Checkup Date</th>
                    <th>Checkup Time</th>
                    <th>Doctor ID</th>
                    <th>Technician ID</th>
                    <th>Payment</th>
                    <th>Created At</th>
                    <th>Status</th>
                    <th>Action</th> <!-- New column for action -->
                </tr>
            </thead>
            <tbody id="searchResultsAppointments">
                <% for (Appointment appointment : (List<Appointment>) request.getAttribute("appointments")) { %>
                    <tr>
                        <td><%= appointment.getId() %></td>
                        <td><%= appointment.getPatientUsername() %></td>
                        <td><%= appointment.getAppointmentType() %></td>
                        <td><%= appointment.getAppointmentDescription() %></td>
                        <td><%= appointment.getCheckupDate() %></td>
                        <td><%= appointment.getCheckupTime() %></td>
                        <td><%= appointment.getDoctorId() %></td>
                        <td><%= appointment.getTechnicianId() %></td>
                        <td><%= appointment.getPayment() %></td>
                        <td><%= appointment.getCreatedDateTime() %></td>
                        <td><%= appointment.getStatus() %></td>
                        <td>
                            <a href="update_appointment?id=<%= appointment.getId() %>" class="btn btn-primary more-btn-appointment">More</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>

<div id="patientsSection" class="section">
    <!-- Patients section content goes here -->
    <div class="row">
        <div class="col-md-4">
            <div class="d-flex justify-content-start">
                <h3>Patients Section</h3>
            </div>
        </div>
        <div class="col-md-4">
            <div class="input-group mb-3">
                <input type="text" class="form-control" id="searchInputPatients" placeholder="Search by ID" aria-label="Search" aria-describedby="basic-addon2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="d-flex justify-content-end">
                <a href="patients_registration" class="btn btn-primary">Add New Patient</a>
            </div>
        </div>
    </div>
    
    <div class="table-responsive table-scrollable">
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Contact Number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>NIC</th>
                    <th>Date Of Birth</th>
                    <th>Created At</th>
                    <th>Password</th>
                    <th>Action</th> <!-- New column for action -->
                </tr>
            </thead>
            <tbody id="searchResultsPatients">
                <% for (Patient patient : (List<Patient>) request.getAttribute("patients")) { %>
                    <tr>
                        <td><%= patient.getId() %></td>
                        <td><%= patient.getFirstName() %></td>
                        <td><%= patient.getLastName() %></td>
                        <td><%= patient.getContactNumber() %></td>
                        <td><%= patient.getEmail() %></td>
                        <td><%= patient.getAddress() %></td>
                        <td><%= patient.getGender() %></td>
                        <td><%= patient.getNic() %></td>
                        <td><%= patient.getDateOfBirth() %></td>
                        <td><%= patient.getRegisteredDateTime() %></td>
                        <td><%= patient.getPassword() %></td>
                        <td>
                            <a href="update_patient?id=<%= patient.getId() %>" class="btn btn-primary more-btn-patient">More</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>


<div id="doctorsSection" class="section">
    <!-- Doctors section content goes here -->
    <div class="row">
        <div class="col-md-4">
            <div class="d-flex justify-content-start">
                <h3>Doctors Section</h3>
            </div>
        </div>
        <div class="col-md-4">
            <div class="input-group mb-3">
                <input type="text" class="form-control" id="searchInputDoctors" placeholder="Search by ID" aria-label="Search" aria-describedby="basic-addon2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="d-flex justify-content-end">
                <a href="doctors_registration" class="btn btn-primary">Add New Doctor</a>
            </div>
        </div>
    </div>

    <div class="table-responsive table-scrollable">
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Contact Number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>NIC</th>
                    <th>Medical Category</th>
                    <th>Created At</th>
                    <th>Password</th>
                    <th>Action</th> <!-- New column for action -->
                </tr>
            </thead>
            <tbody id="searchResultsDoctors">
                <% for (Doctor doctor : (List<Doctor>) request.getAttribute("doctors")) { %>
                    <tr>
                        <td><%= doctor.getId() %></td>
                        <td><%= doctor.getFirstName() %></td>
                        <td><%= doctor.getLastName() %></td>
                        <td><%= doctor.getContactNumber() %></td>
                        <td><%= doctor.getEmail() %></td>
                        <td><%= doctor.getAddress() %></td>
                        <td><%= doctor.getGender() %></td>
                        <td><%= doctor.getNic() %></td>
                        <td><%= doctor.getMedicalCategory() %></td>
                        <td><%= doctor.getRegisteredDateTime() %></td>
                        <td><%= doctor.getPassword() %></td>
                        <td>
                            <a href="update_doctor?id=<%= doctor.getId() %>" class="btn btn-primary more-btn-doctor">More</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>


<div id="techniciansSection" class="section">
    <!-- Technicians section content goes here -->
    <div class="row">
        <div class="col-md-4">
            <div class="d-flex justify-content-start">
                <h3>Technicians Section</h3>
            </div>
        </div>
        <div class="col-md-4">
            <div class="input-group mb-3">
                <input type="text" class="form-control" id="searchInputTechnicians" placeholder="Search by ID" aria-label="Search" aria-describedby="basic-addon2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="d-flex justify-content-end">
                <a href="technicians_registration" class="btn btn-primary">Add New Technician</a>
            </div>
        </div>
    </div>

    <div class="table-responsive table-scrollable">
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Contact Number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Gender</th>
                    <th>NIC</th>
                    <th>Created At</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="searchResultsTechnicians">
                <% for (Technician technician : (List<Technician>) request.getAttribute("technicians")) { %>
                    <tr>
                        <td><%= technician.getId() %></td>
                        <td><%= technician.getFirstName() %></td>
                        <td><%= technician.getLastName() %></td>
                        <td><%= technician.getContactNumber() %></td>
                        <td><%= technician.getEmail() %></td>
                        <td><%= technician.getAddress() %></td>
                        <td><%= technician.getGender() %></td>
                        <td><%= technician.getNic() %></td>
                        <td><%= technician.getRegisteredDateTime() %></td>
                        <td><%= technician.getPassword() %></td>
                        <td>
                            <a href="update_technician?id=<%= technician.getId() %>" class="btn btn-primary more-btn-technician">More</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>


</div>


</div>


<% } else {
    response.sendRedirect("login");
} %>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
window.onload = function() {
    // Retrieve the last selected card ID from local storage
    var lastSelectedCard = localStorage.getItem('lastSelectedCard');
    if (lastSelectedCard) {
        showSection(lastSelectedCard);
    } else {
        showSection('appointments');
    }
};

function showSection(sectionId) {
    var sections = document.querySelectorAll('.section');
    sections.forEach(function(section) {
        section.style.display = 'none';
    });

    var cards = document.querySelectorAll('.card');
    cards.forEach(function(card) {
        card.classList.remove('selected-card');
    });

    var selectedSection = document.getElementById(sectionId + 'Section');
    if (selectedSection) {
        selectedSection.style.display = 'block';
        document.getElementById(sectionId + 'Card').classList.add('selected-card');
        
        // Store the ID of the last selected card in local storage
        localStorage.setItem('lastSelectedCard', sectionId);
    }
}

    function searchTable(sectionId) {
        var searchId = document.getElementById('searchInput' + sectionId + '').value.trim();
        var rows = document.querySelectorAll('#searchResults' + sectionId + ' tr');

        rows.forEach(function(row) {
            var idCell = row.cells[0]; // Assuming the ID is in the first cell
            if (idCell.textContent.includes(searchId)) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    }

    document.getElementById('searchInputAppointments').addEventListener('input', function() {
        searchTable('Appointments');
    });

    document.getElementById('searchInputPatients').addEventListener('input', function() {
        searchTable('Patients');
    });

    document.getElementById('searchInputDoctors').addEventListener('input', function() {
        searchTable('Doctors');
    });

    document.getElementById('searchInputTechnicians').addEventListener('input', function() {
        searchTable('Technicians');
    });
</script>
</body>
</html>
