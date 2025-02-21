<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Booking</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Link to external CSS -->
</head>
<body>

<%
    int bookingId = Integer.parseInt(request.getParameter("id")); // Get the booking ID from the request
    Connection connection = null;
    PreparedStatement statement = null;

    try {
        // Connect to the database (replace credentials)
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/c_userdb", "root", "6566");

        // SQL query to delete the booking
        String sql = "DELETE FROM bookings WHERE id=?";
        statement = connection.prepareStatement(sql);
        statement.setInt(1, bookingId);

        // Execute the delete query
        int rowsDeleted = statement.executeUpdate();

        if (rowsDeleted > 0) {
            // Redirect to the bookings page after a successful deletion
            response.sendRedirect("bookings.jsp");
        } else {
            out.println("<p>Deletion failed. No booking found with ID: " + bookingId + "</p>");
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>There was an error deleting the booking. Please try again.</p>");
    } finally {
        // Close resources
        if (statement != null) try { statement.close(); } catch (SQLException ignore) {}
        if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
    }
%>

</body>
</html>
