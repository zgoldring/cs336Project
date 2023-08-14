<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Search Result</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="container">
    <h1>Auction has been made</h1>
    <% 
    //get params from buy page
      String vehicle = request.getParameter("vehicle");
      String Make = request.getParameter("make");
      String Manufacturer = request.getParameter("manufacturer");
      String fuel = request.getParameter("fuel");
      String accessories = request.getParameter("accessories");
      String listing_price = request.getParameter("listing_price");
      String secret_max = request.getParameter("secret_max");
      boolean isSearched = false;

      // Perform database operations
      //currently does not work as database is not useable yet, need to fix ASAP
      //this query will have to insert the auction into the database
      	// query still needs to be created
      try {
        Connection conn = DBConnectionManager.getConnection();
        String query = "SELECT * FROM users WHERE username=? AND password=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
        	isCreated = true;
        }
        rs.close();
        ps.close();
        DBConnectionManager.closeConnection(conn);
      } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
      }
     
      
   // If the auction has been made, go to auction
      	if (isCreated) {
        response.sendRedirect("buyersSearchResults.jsp");
      } else {
        out.println("Invalid auction. Please try again.");
      }
    %>
  </div>
</body>
</html>
