<%@ page language="java" session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" type="text/css" href="css/profile.css">
</head>
<body style="background-image: url('Product Img/pexels-charithk-7538610.jpg'); 
             background-size: cover; 
             background-position: center; 
             background-repeat: no-repeat; 
             height: 100vh; 
             margin: 0;">
             
    <header>           
        <div class="header-content1">
            
            <nav class="navbar">
                <ul>
                    <li><a href="home login.jsp">Home</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="Aboutus.jsp">About Us</a></li>
                    <li><a href="payment.php">Payment</a></li>
                </ul>
            </nav>
            <div class="header-buttons">
                <button class="btn" onclick="window.location.href='home.jsp'">LOG OUT</button>
            </div>
            </div>      
    </header>
       <br><br><br><br><br><br><br><br><br><br>
 
 
 <div class="header-content">
    <h2>User Profile</h2>
    <form action="ProfileServlet" method="post">
        <p style="font-weight: bold;">Username: ${sessionScope.username}</p>
        <label>Email:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input type="email" name="email" value="${sessionScope.email}" required><br>
        <label>Date of Birth:&nbsp&nbsp&nbsp&nbsp&nbsp</label><input type="date" name="dob" value="${sessionScope.dob}" required><br>
        <label>Phone Number:&nbsp</label><input type="text" name="phone" value="${sessionScope.phone}" required><br>
        <input type="submit" value="Update">
    </form>
    <form action="DeleteProfileServlet" method="post" style="display:inline;">
        <input type="submit" value="Delete Profile" onclick="return confirm('Are you sure you want to delete your profile?');">
    </form>
    </div>
  
     <br><br><br><br><br><br><br><br>
   <footer >
   

    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
