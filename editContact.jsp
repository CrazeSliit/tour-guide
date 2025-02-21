<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.tourguide.contact.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/editContact.css">
    <link rel="stylesheet" type="text/css" href="css/cstyle.css">
    <title>Edit Contact</title>
</head>
<body style="background-image: url('Product Img/pexels-freestockpro-320007.jpg'); 
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
            </div>	
      
    </header>
    <br><br><br><br><br><br>
    <h1>EDIT CONTACT</h1>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        String username = "", email = "", phone_number = "", message = "";

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM contact_details WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                username = rs.getString("username");
                email = rs.getString("email");
                phone_number = rs.getString("phone_number");
                message = rs.getString("message");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>

    <form action="ContactServlet" method="post">
   <center> <lable style="font-size:30px">${sessionScope.username}</lable></center>

        <label>Email:</label>
        <input type="email" name="email" value="<%= email %>" required><br><br>

        <label>Phone Number:</label>
        <input type="text" name="phone_number" value="<%= phone_number %>" required><br><br>

        <label>Message:</label>
        <textarea name="message" required><%= message %></textarea><br><br>

        <input type="hidden" name="id" value="<%= id %>">
        <input type="hidden" name="action" value="edit">
        <button type="submit">Save Changes</button>
    </form>
    <br><br><br><br><br><br><br>
    
     <footer >
   

    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
