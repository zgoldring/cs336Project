<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the HelloWorld.jsp
		String inputEmail = request.getParameter("email");
		String inputPassword = request.getParameter("password");
		
		String check = "SELECT * FROM user WHERE email = '" + inputEmail + "' AND password = '" + inputPassword + "'";
	
		ResultSet result = stmt.executeQuery(check);
		
		con.close();
		
		out.print("Welcome!");
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("Check failed :()");
	}
	
%>
	<br>
		<form method="get" action="auctions.jsp">
			<table>
				<tr>    
				<tr>
			</table>
			<input type="submit" value="auctions">
		</form>
	<br>
	<br>
		<form method="get" action="HelloWorld.jsp">
			<table>
				<tr>    
				<tr>
			</table>
			<input type="submit" value="logout">
		</form>
	<br>
	
</body>
</html>