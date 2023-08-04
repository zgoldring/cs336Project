<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Hello User!</title>
	</head>
	
	<body>
							  
	Please enter email and password:
	<br>
		<form method="get" action="welcome.jsp">
			<table>
				<tr>    
					<td>Enter Email</td><td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Enter Password</td><td><input type="text" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="Log in!">
		</form>
	<br>
	

</body>
</html>