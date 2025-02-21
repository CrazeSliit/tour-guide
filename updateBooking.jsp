<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Booking</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Link to external CSS -->
</head>
<body>

<%
    // Retrieve booking details from the form
    int bookingId = Integer.parseInt(request.getParameter("id"));
    String startLocation = request.getParameter("start_location");
    String destination = request.getParameter("destination");
    int numberOfPeople = Integer.parseInt(request.getParameter("number_of_people"));
    String vehicleType = request.getParameter("vehicle_type");
    boolean guideRequired = Boolean.parseBoolean(request.getParameter("guide_required"));
    int spendingDays = Integer.parseInt(request.getParameter("spending_days"));
    String additionalMessages = request.getParameter("additional_messages");

    // Initialize database connection objects
    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Connect to the database (replace credentials)
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/c_userdb", "root", "6566");

        // SQL query to update the booking details
        String sql = "UPDATE bookings SET start_location=?, destination=?, number_of_people=?, vehicle_type=?, guide_required=?, spending_days=?, additional_messages=? WHERE id=?";

        statement = connection.prepareStatement(sql);
        statement.setString(1, startLocation);
        statement.setString(2, destination);
        statement.setInt(3, numberOfPeople);
        statement.setString(4, vehicleType);
        statement.setBoolean(5, guideRequired);
        statement.setInt(6, spendingDays);
        statement.setString(7, additionalMessages);
        statement.setInt(8, bookingId);

        // Execute the update query
        int rowsUpdated = statement.executeUpdate();

        if (rowsUpdated > 0) {
            // Redirect to the bookings page after a successful update
            response.sendRedirect("bookings.jsp");
        } else {
            out.println("<p>Update failed. No booking found with ID: " + bookingId + "</p>");
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>There was an error updating the booking. Please try again.</p>");
    } finally {
        // Close resources
        if (statement != null) try { statement.close(); } catch (SQLException ignore) {}
        if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
    }
%>

</body>
</html>
