<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Guide Registration Form</title>
    <link rel="stylesheet" type="text/css" href="css/TourGuideRegistration.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <script>
        function validateEmail() {
            var email = document.getElementById("email");
            var emailError = document.getElementById("email-error");
            emailError.textContent = ""; // Clear previous error message
            email.style.borderColor = ""; // Reset border color
            
            if (email.value.trim() === '' || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.value)) {
                emailError.textContent = "Valid email is required!";
                emailError.style.color = "red";
                email.style.borderColor = "red";
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
        
        function validatePhone() {
            var phone = document.getElementById("phone");
            var phoneError = document.getElementById("phone-error");
            phoneError.textContent = ""; // Clear previous error message
            phone.style.borderColor = ""; // Reset border color

            // Trim the input value
            var phoneValue = phone.value.trim();

            // Check if the input is not empty, is numeric, and has a specific length (e.g., 10 digits)
            if (phoneValue === ''|| phoneValue.length !== 10) {
                phoneError.textContent = "Please enter a valid 10-digit phone number!";
                phoneError.style.color = "red";
                phone.style.borderColor = "red";
                return false; // Prevent form submission
            }
            
            return true; // Allow form submission
        }

    </script>
</head>
<body>
    <header>
        <div class="header-content1">
            <nav class="navbar">
                <ul>
                    <li><a href="home login.jsp">Home</a></li>
                    <li><a href="Product.php">Booking</a></li>
                    <li><a href="about.php">About Us</a></li>
                    <li><a href="payment.php">Payment</a></li>
                </ul>
            </nav>
            <div class="header-buttons">
                <button class="btn" onclick="window.location.href='home.jsp'">LOG OUT</button>
            </div><br><br>      
        </div>
    </header>
    <div class="container">
        <div class="contact-info"><br><br>
            <h2>Tour Guide Registration Form</h2>
            <form action="InsertServlet1" method="post" onsubmit="return validateEmail() && validatePhone()">
                <div class="user-details">
                    <div class="input-box">
                        <label for="details">Full Name</label>
                        <input type="text" id="name" name="name" placeholder="Your Name" required><br>
                    </div>
                    <div class="input-box">
                        <label for="details">Email Address</label>
                        <input type="text" id="email" name="email" placeholder="email" required><br>
                        <span id="email-error"></span> 
                    </div>
                    <div class="input-box">
                        <label for="details">Phone Number</label>
                        <input type="tel" name="phone" id ="phone" placeholder="Phone Number" required><br>
                        <span id="phone-error"></span> 
                    </div>
                    <div class="input-box">
                        <label for="details">License Number (If Any)</label>
                        <input type="text" name="license_number" placeholder="license" required><br>
                    </div>
                    <div class="input-box">
   						 <label for="gender">Gender</label>
    							<select id="gender" name="gender" required>
        						<option value="">Select Gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
    </select><br>
</div>
                    <label for="details">Availability</label>
                    <select id="availability" name="availability" required>
                        <option value="Full-time">Full-time</option>
                        <option value="Part-time">Part-time</option>
                        <option value="Freelance">Freelance</option>
                    </select><br> 
                    <div class="msg">
                        <label for="details">Message</label>
                        <textarea name="message" placeholder="Subject" required></textarea>
                    </div>
                    <div class="button">
                        <button type="submit">Register</button> <!-- Change to type="submit" -->
                    </div>
                </div>
            </form>
        </div>
    </div>
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
