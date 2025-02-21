<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/contact.css">
    <script src="js/validations.js"></script>
    <link rel="stylesheet" type="text/css" href="css/cstyle.css">
    <title>Contact Us</title>
</head>
<body style="background-image: url('Product Img/pexels-thilina-alagiyawanna-3266092-27669340.jpg'); 
             background-size: cover; 
             background-position: center; 
             background-repeat: no-repeat; 
             height: 100vh; 
             margin: 0;">
             

<header>           
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
                <button class="btn" onclick="window.location.href='profile.jsp'">PROFILE</button>
                <button class="btn" onclick="window.location.href='home.jsp'">LOG OUT</button>
            </div>
      
    </header>
    <br><br><br><br><br><br>
   <div class="container"> <!-- Added container for the form -->
    <h2>Contact Us</h2>
    <form action="ContactServlet" method="post" onsubmit="return validateForm()">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="phone_number">Phone Number:</label>
        <input type="text" name="phone_number" id="phone_number" required>

        <label for="message">Message:</label>
        <textarea name="message" id="message" required></textarea>

        <input type="hidden" name="action" value="create">
        <button type="submit">Submit</button>
         <h4><a href="viewContacts.jsp">View Your Old Message</a></h4>
    </form>
    </div>	
    
      <footer >
   

    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
