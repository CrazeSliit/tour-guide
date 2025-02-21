<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Bookings</title>
    <link rel="stylesheet" type="text/css" href="css/bookng.css"> 
    <!-- Link to external CSS -->
</head>
<body style="background-image: url('Product Img/pexels-genine-alyssa-pedreno-andrada-1263127-2403209.jpg'); 
             background-size: cover; 
             background-position: center; 
             background-repeat: no-repeat; 
             height: 100vh; 
             margin: 0;">
<header>           
        <div class="header-content1">
            <nav class="navbar">
                <ul>
                    <li><a href="home book.jsp">Home</a></li>
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
<br><br><br><br>
<h2>Your Bookings</h2>

<table>
    <thead>
        <tr>
            <th>Start Location</th>
            <th>Destination</th>
            <th>Number of People</th>
            <th>Vehicle Type</th>
            <th>Guide</th>
            <th>Spending Days</th>
            <th>Additional Messages</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <%
            Connection connection = null;
            PreparedStatement preparedStatement = null;
            ResultSet resultSet = null;

            try {
                // Check if the session is valid
                if (session != null && session.getAttribute("username") != null) {
                    String username = (String) session.getAttribute("username");

                    // Database connection (replace credentials)
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/c_userdb", "root", "6566");

                    // Prepare SQL query to get bookings for the logged-in user
                    String query = "SELECT * FROM bookings WHERE username = ?";
                    preparedStatement = connection.prepareStatement(query);
                    preparedStatement.setString(1, username);
                    resultSet = preparedStatement.executeQuery();

                    // Check if there are any bookings
                    boolean hasBookings = false;

                    while (resultSet.next()) {
                        hasBookings = true; // Found at least one booking
                        String startLocation = resultSet.getString("start_location");
                        String destination = resultSet.getString("destination");
                        int numberOfPeople = resultSet.getInt("number_of_people");
                        String vehicleType = resultSet.getString("vehicle_type");
                        boolean guideRequired = resultSet.getBoolean("guide_required");
                        int spendingDays = resultSet.getInt("spending_days");
                        String additionalMessages = resultSet.getString("additional_messages");

        %>
                        <tr>
                            <td><%= startLocation %></td>
                            <td><%= destination %></td>
                            <td><%= numberOfPeople %></td>
                            <td><%= vehicleType %></td>
                            <td><%= guideRequired ? "Yes" : "No" %></td>
                            <td><%= spendingDays %></td>
                            <td><%= additionalMessages %></td>
                            <td>
                                <a href="editBooking.jsp?id=<%= resultSet.getInt("id") %>">Edit</a>
                                <a href="deleteBooking.jsp?id=<%= resultSet.getInt("id") %>" onclick="return confirm('Are you sure?')">Delete</a>
                            </td>
                        </tr>
        <%
                    }

                    if (!hasBookings) {
        %>
                        <tr>
                            <td colspan="8">No bookings found for this user.</td>
                        </tr>
        <%
                    }

                } else {
        %>
                    <tr>
                        <td colspan="8">Please log in to view your bookings.</td>
                    </tr>
        <%
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                out.println("<tr><td colspan='8'>Database connection error: " + e.getMessage() + "</td></tr>");
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<tr><td colspan='8'>SQL error: " + e.getMessage() + "</td></tr>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<tr><td colspan='8'>Error: " + e.getMessage() + "</td></tr>");
            } finally {
                // Close resources
                if (resultSet != null) try { resultSet.close(); } catch (SQLException ignore) {}
                if (preparedStatement != null) try { preparedStatement.close(); } catch (SQLException ignore) {}
                if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
            }
        %>
    </tbody>
</table>
<footer>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div class="footer-bottom" style=" color: #ffffff; border-top: 1px solid #ffffff;">
        <p>&copy; 2024 Guide Me Now. All Rights Reserved.</p>
    </div>
</footer>

</body>
</html>
