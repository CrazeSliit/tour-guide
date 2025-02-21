<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.tourguide.contact.DBConnection" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Contacts</title>
    <link rel="stylesheet" type="text/css" href="css/contactview.css">
    <link rel="stylesheet" type="text/css" href="css/cstyle.css">
</head>
<body style="background-image: url('Product Img/pexels-freestockpro-11267368.jpg'); 
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

<br><br><br><br><br><br><br><br><br>
<div class="container">
    <h2>Your Contact Details</h2>

    <table class="contacts-table">
        <thead>
            <tr>
            
              
                <th>Username</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        
            <%
                // Get the current session
         
                if (session == null || session.getAttribute("username") == null) {
                    response.sendRedirect("login.jsp");  // Redirect to login page if session is not valid
                    return;
                }

                // Get the username from session
                String username = (String) session.getAttribute("username");

                try (Connection conn = DBConnection.getConnection()) {
                    // Query to get only the contact details of the logged-in user
                    String sql = "SELECT * FROM contact_details WHERE username = ?";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ps.setString(1, username);
                    ResultSet rs = ps.executeQuery();

                    // Check if the user has any contact details
                    boolean hasContacts = false;
                    while (rs.next()) {
                        hasContacts = true;
            %>
            <tr>
                
                <td><%= rs.getString("username") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("phone_number") %></td>
                <td><%= rs.getString("message") %></td>
                <td>
                    <form action="editContact.jsp" method="get" style="display:inline;">
                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                        <button type="submit" class="btn edit-btn">Edit</button>
                    </form>
                    <form action="ContactServlet" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                        <input type="hidden" name="action" value="delete">
                        <button type="submit" class="btn delete-btn">Delete</button>
                    </form>
                </td>
            </tr>
            <%
                    }

                    // If no contacts were found, display a message
                    if (!hasContacts) {
            %>
            <tr>
                <td colspan="6">No contact details found for you.</td>
            </tr>
            <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            %>
        </tbody>
    </table>
</div>

<br><br><br><br><br><br><br><br><br><br><br>
<footer>
    <div class="footer-bottom">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>
</body>
</html>
