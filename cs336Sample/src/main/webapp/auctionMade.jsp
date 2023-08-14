<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction Has Been Created!</title>
</head>
<body>
<div class="container">
    <h1>Login Result</h1>
    <% 
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      boolean isValidUser = false;

      // Perform database operations
      try {
        Connection conn = DBConnectionManager.getConnection();
        String query = "SELECT * FROM users WHERE username=? AND password=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
          isValidUser = true;
        }
        rs.close();
        ps.close();
        DBConnectionManager.closeConnection(conn);
      } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
      }

      // If the user credentials are valid, redirect to the welcome screen
      if (isValidUser) {
        session.setAttribute("username", username);
        response.sendRedirect("welcome.jsp");
      } else {
        out.println("Invalid credentials. Please try again.");
      }
    %>
  </div>
</body>
</html>