<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Customer Representative</title>
</head>
<body>
<br>
		<form method="get" action="newCustomerRepProcess.jsp">
		info needed for customer reps
			<table>
				<tr>    
					<td>Vehicle Type</td><td><input type="text" name="vehicle"></td>
				</tr>
				
			</table>
			<input type="submit" value="Create Representative">
		</form>
	<br>
</body>
</html>