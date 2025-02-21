<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guide Me NOw</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/footer_1.css">
    <link rel="stylesheet" href="css/header_2.css">
    
    <header>           
        <div class="header-content1">
            
            <nav class="navbar">
                <ul>
                    <li><a href="home login.jsp">Home</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="about.php">About Us</a></li>
                    <li><a href="payment.jsp">Payment</a></li>
                </ul>
            </nav>
            <div class="header-buttons">
                <button class="btn" onclick="window.location.href='home.jsp'">LOG OUT</button>
            </div>      
    </header>
    <style>
      
.navbar{
    width: 100%;
    height: 100px;
    background-color: #ffffff;
    display: flex;
    justify-content: space-around;
    align-items: center;
    color: #ffffff;
}

.navbar h1{
background-color: #2a2a2a;
}

.navbar logo{
	background-color: #2a2a2a;
}
.menu ul{
    display: flex;
    align-items: center;
    background-color: #fff;
}
.menu ul li a{
    text-decoration: none;
    color: #ffffff;
    padding: 5px 12px;
    letter-spacing: 2px;
    font-size: 18px;
    background-color: #2a2a2a;
}
.menu ul li a:hover{
    border-bottom: 4px solid #ffffff;
    transition: 0.4s;
}

.login{
background-color: #2a2a2a;
}
.login a{
    text-decoration: none;
    color: #ffffff;
    font-size: 18px;
    font-weight: bold;
    border-radius: 12px;
    padding: 12px 30px;
    border: 2px solid #ffffff;
    background-color: #2a2a2a;
}
.login a:hover{
   background-color: #565656;
   transition: 0.2s; 
}
    </style>
</head>

	
	<!-- horizontal navigation bar -->

<body>
<style>
.error-message {
	color: red;
}

.body{
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	border: none;
	text-transform: capitalize;
	transition: all .2s linear;
	background-color: #ffff;
}

.containerpay {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 25px;
	min-height: 100vh;
	background: #ffffff;
}

.containerpay form {
    padding: 20px;
    width: 900px;
    background: #fff;
    box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
    background-color: #ffff;
    border-radius: 12px; /* Add border radius to the form */
}

.containerpay form .row {
	display: flex;
	flex-wrap: wrap;
	gap: 15px;
	background-color: #ffff;
}

.containerpay form .row .col {
	flex: 1 1 250px;
	background-color: #ffff;
}

.containerpay form .row .col .title {
	font-size: 20px;
	color: #333;
	padding-bottom: 5px;
	text-transform: uppercase;
	background-color: #ffff;
}

.containerpay form .row .col .inputBox {
	margin: 15px 10px;
	background-color: #ffff;
}

.containerpay form .row .col .inputBox span {
	margin-bottom: 10px;
	display: block;
	background-color: #ffff;
}

.containerpay form .row .col .inputBox input {
	width: 90%;
	border: 1px solid #ccc;
	padding: 10px 15px;
	font-size: 15px;
	text-transform: none;
	background-color: #ffff;
}

.containerpay form .row .col .inputBox input:focus {
	background-color: #ffff;
}

.containerpay form .row .col .flex {
	display: flex;
	gap: 15px;
	background-color: #ffff;
}

.containerpay form .row .col .flex .inputBox {
	margin-top: 5px;
	background-color: #ffff;
}
.containerpay form .row .col .selectt {

	background-color: #ffff;
}

.containerpay form .row .col .inputBox img {
	height: 34px;
	margin-top: 5px;
	background-color: #ffff;
}

.containerpay form .submit-btn {
    width: 100%;
    padding: 12px;
    font-size: 17px;
    background: #00ec27;
    color: #fff;
    margin-top: 5px;
    cursor: pointer;
    border-radius: 8px; /* Add border radius to the submit button */
}


.containerpay form .submit-btn:hover {
    background: #00981e;
}
.selectt {
    background-color: white;
}

.selectt select {
    background-color: white;
}



</style>
</head>

<body>

<br><br>

	<div class="containerpay">

		
		<form action="SaveServlet" method="post" id="checkoutForm" onsubmit="return validateForm()">
		

			<div class="row">

				<div class="col">

					<h3 class="title">user details</h3>

					<div class="inputBox">
						<span>Fullname :</span> <input type="text" name="name"
							placeholder="Full Name">
					</div>
					<div class="inputBox">
						<span>E mail :</span> <input type="email" name="email"
							placeholder="example@example.com">
					</div>

					<div class="inputBox">
						<span>Amount :</span> <input type="text" name="amount" >
					</div>



				</div>


				<div class="col">

					<h3 class="title">payment</h3>

					<div class="inputBox">
						<span>Cards accepted :</span> <img src="./images/card_img.jpg"
							alt="">
					</div>
					<div class="inputBox">
						<span>Name on Card :</span> <input type="text" name="cardname"
							placeholder="name on card">
					</div>
					<div class="inputBox">
						<span>Cardnumber :</span> <input type="tel" name="cardnumber"
							placeholder="****************" maxlength="16">
					</div>
					<div class="flex">
						<span class="inputbox">Exp month :</span> 
					<div class="selectt">
						
						<select name="expmonth" id="month">
                                <option value="Jan">Jan</option>
                                <option value="Feb">Feb</option>
                                <option value="Mar">Mar</option>
                                <option value="Apr">Apr</option>
                                <option value="May">May</option>
                                <option value="Jun">Jun</option>
                                <option value="Jul">Jul</option>
                                <option value="Aug">Aug</option>
                                <option value="Sep">Sep</option>
                                <option value="Oct">Oct</option>
                                <option value="Nov">Nov</option>
                                <option value="Dec">Dec</option>
                            </select>
					</div>

					
						<div class="selectt">
							<span>Exp year :</span> 
								<select name="expyear" id="year">
                                
                                <option value="2024">2024</option>
                                <option value="2025">2025</option>
                                <option value="2026">2026</option>
                                <option value="2027">2027</option>
                                <option value="2028">2028</option>
                                <option value="2029">2029</option>
                            </select>
						</div>
						
						</div>
						<div class="inputBox">
							<span>CVV :</span> <input type="password" name="cvv"
								placeholder="123" maxlength="3" required>
						</div>
					

				</div>

			</div>

			<input type="submit" value="proceed to checkout" class="submit-btn">

		</form>

	</div>






	<div class="view">
		<a href="ViewServlet">view</a>
	</div>
	
	<script>
    // Function to validate the form
    function validateForm() {
        // Fetching form elements
        var name = document.forms["checkoutForm"]["name"].value;
        var email = document.forms["checkoutForm"]["email"].value;
        var amount = document.forms["checkoutForm"]["amount"].value;
        var cardname = document.forms["checkoutForm"]["cardname"].value;
        var cardnumber = document.forms["checkoutForm"]["cardnumber"].value;
        var expmonth = document.forms["checkoutForm"]["expmonth"].value;
        var expyear = document.forms["checkoutForm"]["expyear"].value;
        var cvv = document.forms["checkoutForm"]["cvv"].value;

        // Validating Full Name
        if (name == "") {
            alert("Full Name must be filled out");
            return false;
        }

        // Validating Email
        if (email == "") {
            alert("Email must be filled out");
            return false;
        }

        // Validating Amount
        if (amount === "" || !/^\d+/.test(amount)) {
    	alert("Amount must be a valid integer");
   		return false;
		}

        // Validating Card Name
        if (cardname == "") {
            alert("Card Name must be filled out");
            return false;
        }

        // Validating Card Number
        if (cardnumber === "") {
   		 alert("Card Number must be filled out");
  		  return false;
  		  
  		  // must contain only digits
		} else if (!/^\d+$/.test(cardnumber)) {
	    alert("Card Number must contain only digits");
  		  return false;
  		  //length should be 16
		} else if (cardnumber.length !== 16) {
    alert("Card Number must be 16 digits");
    return false;
}

        // Validating Expiry Month
        if (expmonth == "") {
            alert("Expiry Month must be filled out");
            return false;
        }

        // Validating Expiry Year
        if (expyear == "") {
            alert("Expiry Year must be filled out");
            return false;
        } else if (expyear.length !== 4) {
            alert("Expiry Year must be 4 digits");
            return false;
        }

        // Validating CVV
        if (cvv == "") {
            alert("CVV must be filled out");
            return false;
        } else if (cvv.length !== 3) {
            alert("CVV must be 3 digits");
            return false;
        }

        // If all validations pass, return true
        return true;
    }
</script>
	
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