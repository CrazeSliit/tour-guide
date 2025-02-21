<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/Update.css">
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


<%
   String id = request.getParameter("id") ;
   String name = request.getParameter("name") ;
   String email = request.getParameter("email");
   String phone= request.getParameter("phone") ;
   String license_number = request.getParameter("license_number") ;
   String gender  = request.getParameter("gender") ;
   String availability= request.getParameter("availability") ;
   String message= request.getParameter("message") ;
  
%>

<form action="UpdateServlet" method="post" onsubmit="return validateEmail() && validatePhone()">
              <div class="user-details">
              
              <div class="input-box">
               
                 <label for="details">ID </label>
                 <input type="text" id="id" name="id" placeholder="Your Name" readonly value="<%=id%>" required><br>
                  </div>
                  
              <div class="input-box">
               
                 <label for="details">Full Name</label>
                 <input type="text" id="name" name="name" placeholder="Your Name" value="<%=name%>" required><br>
                  </div>
                 
                  <div class="input-box">
                 <label for="details">Email Address</label>
                 <input type="text" name="email" id= "email" placeholder="email" value="<%=email%>" required><br>
                 <span id="email-error"></span>
                  </div>
                 
                  <div class="input-box">
                 <label for="details">Phone Number</label>
                 <input type="tel" name="phone" id= "phone" placeholder="Phone Number" value="<%=phone%>"required><br>
                 <span id="phone-error"></span>
                 </div>
                 
                 
                 
                  <div class="input-box">
                 <label for="details">License Number (If Any)</label>
                 <input type="text"  name="license_number" placeholder="license" value="<%=license_number%>" required><br>
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
                 <select id="availability" name="availability" value="<%=availability%>" required>
                       <option value="Full-time">Full-time</option>
                       <option value="part-time">Part-time</option>
                       <option value="Freelance">Freelance</option><br>
                       
                  </select><br> 
                 
                 <div class="msg">
                 <label for="details" >Message</label>
                 <textarea name="message" placeholder="Message" required><%= message %></textarea>
                 </div>
                 
                 <div class="button">
                 <button onclick="buttonClicked()">Submit</button>
                 </div>
                 

    
               </div>
                </div>
                
                 </form>
</body>
</html>