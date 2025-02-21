<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/guideprofile.css">
</head>
<body>
 <div class="wrapper">

    <h2>Tour Guide Profile</h2><br><br>
    <h3>Name:</h3>
    
     <form method="post">
     <div class="contact-info" >
     
            
              <div class="user-details">
              <div class="input-box">
               
                 <label for="details">Full Name:</label><br>
                 <input type="text" id="name" name="name" ><br>                  </div>
                 
                  <div class="input-box">
                 <label for="details">Email Address:</label><br>
                 <input type="text" name="E-mail"><br><br>
                  </div>
                 
                  <div class="input-box">
                 <label for="details">Phone Number</label><br>
                 <input type="tel" name="Phone Number" ><br>
                 </div>
                 
                 <div class="input-box">
                 <label for="details">License Number (If Any)</label><br>
                 <input type="text" name="License" name="license" ><br>
                  </div>
                 
                 <div class="input-box">
                 <label for="details">Gender</label><br>
                 <input type="text" name="gender" name="gender" ><br><br>
                  </div>
                  
                 
                 
                 <label for="details">Availability</label><br>
                 <input type="text" name="availability" ><br>
                    
                       
                  </select><br> 
                 
                 
                 <label for="details" >Message</label><br>
                 
                 
                 <textarea name="message"></textarea><br>
                
                 
                  <button type="button" class="btn1">edit</button><br><br>
                  <button type="button" class="btn2">delete profile</button>
    </form>       
</body>
</html>