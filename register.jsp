<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body style="background-image: url('Product Img/pexels-charithk-7538610.jpg'); 
             background-size: cover; 
             background-position: center; 
             background-repeat: no-repeat; 
             height: 100vh; 
             margin: 0;">
             
             
  <header>           
        <div class="header-content">
            
            <nav class="navbar">
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="Product.php">Booking</a></li>
                    <li><a href="Aboutus.jsp">About Us</a></li>
                    <li><a href="payment.php">Payment</a></li>
                </ul>
            </nav>
            <div class="header-buttons">
                <button class="btn" onclick="window.location.href='register.jsp'">SIGN UP</button>
                <button class="btn" onclick="window.location.href='login.jsp'">LOG IN</button>
            </div>
      
    </header>






<br><br>



    <div class="form-container">
        <h2>Register</h2>
        <form action="RegisterServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>

            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone"  title="10 digits only" required>

            <input type="submit" value="Register">
        </form>
    </div>
    
    <footer >
   

    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>
    
    
    <script src="script.js"></script>
</body>
</html>
