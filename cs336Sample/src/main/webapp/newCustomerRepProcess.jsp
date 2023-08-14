<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Creates New Representative</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="container">
    <h1>Login Result</h1>
    <% 
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      boolean isCreatedRep = false;

      // Perform database operations
      //currently does not work as database is not useable yet, need to fix ASAP
      try {
        Connection conn = DBConnectionManager.getConnection();
        String query = "SELECT * FROM users WHERE username=? AND password=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
        	isCreatedRep = true;
        }
        rs.close();
        ps.close();
        DBConnectionManager.closeConnection(conn);
      } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
      }
     
      
      //hardcode admin username and password
      if(username == "admin@gmail.com" && password == "adminpassword"){
    	  session.setAttribute("username", username);
    	  response.sendRedirect("adminWelcome.jsp");
      }
   // If the user credentials are valid, redirect to the welcome screen
      	else if (isCreatedRep) {
        session.setAttribute("username", username);
        response.sendRedirect("adminWelcome.jsp");
      } else {
        out.println("Invalid credentials. Please try again.");
      }
    %>
  </div>
</body>
</html>
