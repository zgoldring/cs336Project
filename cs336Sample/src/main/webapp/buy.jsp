<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buyer's Page</title>
</head>
<body>
Please enter details for your auction:
<br>
show all active auctions here
<br/>
	<br>
		<form method="get" action="welcome.jsp">
			<table>
				<tr>    
					<td>Vehicle Type</td><td><input type="text" name="vehicle"></td>
				</tr>
				<tr>
					<td>Style</td><td><input type="text" name="style"></td>
				</tr>
				<tr>
					<td>Accessories</td><td><input type="text" name="accessories"></td>
				</tr>
				<tr>
					<td>Listing Price</td><td><input type="text" name="listing_price"></td>
				</tr>
				<tr>
				<tr>
					<td>Secret Maximum</td><td><input type="text" name="secret_max"></td>
				</tr>
			</table>
			<input type="submit" value="Search">
		</form>
	<br>
</body>
</html>