<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
     <link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body style="background-image: url('Product Img/pexels-charithk-14757008.jpg'); 
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
    <br><br><br><br><br><br>
    
    <div class="form-container">
    <form action="LoginServlet" method="post">
        <label>Username:</label><input type="text" name="username" required><br>
        <label>Password:</label><input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    </div>
    
    
   <br><br><br><br><br><br><br><br><br><br>
    
    <footer >
   

    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
