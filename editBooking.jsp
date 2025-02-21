<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Booking</title>
   <link rel="stylesheet" type="text/css" href="css/cstyle.css"> 
     <link rel="stylesheet" type="text/css" href="css/books.css"> <!-- Link to external CSS -->
</head>
<body style="background-image: url('Product Img/pexels-mnannapaneni-15689739.jpg'); 
             background-size: cover; 
             background-position: center; 
             background-repeat: no-repeat; 
             height: 100vh; 
             margin: 0;">

<%
int bookingId = Integer.parseInt(request.getParameter("id"));

    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    try {
        // Database connection (replace credentials)
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/c_userdb", "root", "6566");

        // Query to fetch booking by ID
        String query = "SELECT * FROM bookings WHERE id = ?";
        statement = connection.prepareStatement(query);
        statement.setInt(1, bookingId);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String startLocation = resultSet.getString("start_location");
            String destination = resultSet.getString("destination");
            int numberOfPeople = resultSet.getInt("number_of_people");
            String vehicleType = resultSet.getString("vehicle_type");
            boolean guideRequired = resultSet.getBoolean("guide_required");
            int spendingDays = resultSet.getInt("spending_days");
            String additionalMessages = resultSet.getString("additional_messages");
%>

<h2>Edit Your Booking</h2>

<form action="updateBooking.jsp" method="post">
    <input type="hidden" name="id" value="<%= bookingId %>">
    
    <label for="start_location">Start Location:</label><br>
    <input type="text" id="start_location" name="start_location" value="<%= startLocation %>" required><br><br>

    <label for="destination">Destination:</label><br>
    <input type="text" id="destination" name="destination" value="<%= destination %>" required><br><br>

    <label for="number_of_people">Number of People:</label><br>
    <select id="number_of_people" name="number_of_people" required>
        <option value="1" <%= numberOfPeople == 1 ? "selected" : "" %>>1</option>
        <option value="2" <%= numberOfPeople >= 2 && numberOfPeople <= 5 ? "selected" : "" %>>2 - 5</option>
        <option value="3" <%= numberOfPeople >= 6 && numberOfPeople <= 10 ? "selected" : "" %>>6 - 10</option>
        <option value="4" <%= numberOfPeople >= 11 && numberOfPeople <= 15 ? "selected" : "" %>>10 - 15</option>
        <option value="12" <%= numberOfPeople > 15 ? "selected" : "" %>>15 More</option>
    </select><br><br>

    <label for="vehicle_type">Vehicle Type:</label><br>
    <select id="vehicle_type" name="vehicle_type" required>
        <option value="car" <%= "car".equals(vehicleType) ? "selected" : "" %>>Car</option>
        <option value="van" <%= "van".equals(vehicleType) ? "selected" : "" %>>Van</option>
        <option value="bike" <%= "bike".equals(vehicleType) ? "selected" : "" %>>Bike</option>
        <option value="bus" <%= "bus".equals(vehicleType) ? "selected" : "" %>>Bus</option>
    </select><br><br>

    <label for="guide_required">Need a Guide?</label><br>
    <input type="radio" id="guide_yes" name="guide_required" value="true" <%= guideRequired ? "checked" : "" %>> Yes
    <input type="radio" id="guide_no" name="guide_required" value="false" <%= !guideRequired ? "checked" : "" %>> No<br><br>

    <label for="spending_days">Spending Days:</label><br>
    <input type="number" id="spending_days" name="spending_days" min="1" value="<%= spendingDays %>" required><br><br>

    <label for="additional_messages">Additional Messages:</label><br>
    <textarea id="additional_messages" name="additional_messages"><%= additionalMessages %></textarea><br><br>

    <input type="submit" value="Update Booking">
</form>


<%
        } else {
            out.println("<p>No booking found with ID: " + bookingId + "</p>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) try { resultSet.close(); } catch (SQLException ignore) {}
        if (statement != null) try { statement.close(); } catch (SQLException ignore) {}
        if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
    }
%>

</body>
</html>