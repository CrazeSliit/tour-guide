<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book a Tour</title>
    <link rel="stylesheet" type="text/css" href="css/cstyle.css"> 
     <link rel="stylesheet" type="text/css" href="css/books.css"> 
     
  <!-- Link to external CSS -->
    <script src="js/script.js"></script>     
                 <!-- Link to external JS -->
</head>
<body style="background-image: url('Product Img/pexels-srkportraits-1085085522.jpg'); 
             background-size: cover; 
             background-position: center; 
             background-repeat: no-repeat; 
             height: 100vh; 
             margin: 0;">
             
             
             
    


  <header class="header-section">
        <div class="header-content">
            
            <nav class="navbar">
                <ul>
                    <li><a href="home login.jsp">Home</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="Aboutus.jsp">About Us</a></li>
                    <li><a href="payment.php">Payment</a></li>
                </ul>
            </nav>
            <div class="header-buttons">
                <button class="btn" onclick="window.location.href='Sign_in.php'">PROFILE</button>
                <button class="btn" onclick="window.location.href='login.php'">LOG OUT</button>
            </div>
        
        </div>
        
    </header>
    
    
    <br><br>
    <br>

<h2>Book Your Tour </h2>
<p></p>	

<form action="tourBooking" method="post" onsubmit="return validateForm()">
<lable style="margin-left:135px;font-size:30px">${sessionScope.username}</lable>
	
    <label for="start_location">Start Location:</label><br>
    <input type="text" id="start_location" name="start_location" required><br><br>

    <label for="destination">Destination:</label><br>
    <input type="text" id="destination" name="destination" required><br><br>

    <label for="number_of_people">Number of People:</label><br>
    <select id="number_of_people" name="number_of_people" required>
        <option value="1">1 </option>
        <option value="2">2 - 5</option>
        <option value="3">6 - 10</option>
        <option value="4">10 - 15</option>
        <!-- More options up to 12 -->
        <option value="12">15 More</option>
    </select><br><br>

    <label for="vehicle_type">Vehicle Type:</label><br>
    <select id="vehicle_type" name="vehicle_type" required>
        <option value="car">Car</option>
        <option value="van">Van</option>
        <option value="bike">Bike</option>
        <option value="bus">Bus</option>
    </select><br><br>

    <label for="guide_required">Need a Guide?</label><br>
    <input type="radio" id="guide_yes" name="guide_required" value="true" checked> Yes
    <input type="radio" id="guide_no" name="guide_required" value="false"> No<br><br>

    <label for="spending_days">Spending Days:</label><br>
    <input type="number" id="spending_days" name="spending_days" min="1" required><br><br>

    <label for="additional_messages">Additional Messages:</label><br>
    <textarea id="additional_messages" name="additional_messages"></textarea><br><br>

    <input type="submit" value="Book Tour">
    <br><br>
    <h4><a href="bookings.jsp">View Your Booking Details</a></h4>
</form>


<footer class="footer-section">
    <div class="footer-container">
        <div class="footer-logo">
            <h2>Guide Me Now</h2>
            <p>Your trusted partner for memorable travel experiences.</p>
        </div>

        <div class="footer-links">
            <h2>Quick Links</h2>
            <ul>
                <li><a href="home.php">Home</a></li>
                <li><a href="about.php">About Us</a></li>
                <li><a href="Product.php">Booking</a></li>
                <li><a href="payment.php">Payment</a></li>
            </ul>
        </div>

        <div class="footer-contact">
            <h2>Contact Us</h2>
            <ul>
                <li>Email: <a href="mailto:contact@guidemenow.com">contact@guidemenow.com</a></li>
                <li>Phone: +123 456 7890</li>
            </ul>
        </div>

        <div class="footer-social">
            <h2>Follow Us</h2>
            <div class="social-icons">
                <a href="#"><img src="Product Img/facebook-icon.png" alt="Facebook"></a>
                <a href="#"><img src="Product Img/twitter-icon.png" alt="Twitter"></a>
                <a href="#"><img src="Product Img/instagram-icon.png" alt="Instagram"></a>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>



</body>
</html>
