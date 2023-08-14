<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Sellers Page</title>
</head>

<body>
Please enter details for your auction:
	<br>
		<form method="get" action="auctionMade.jsp">
			<table>
				<tr>    
					<td>Vehicle Type</td><td><input type="text" name="vehicle"></td>
				</tr>
				<tr>
					<td>Make</td><td><input type="text" name="make"></td>
				</tr>
				<tr>
					<td>Manufacturer</td><td><input type="text" name="manufacturer"></td>
				</tr>
				<tr>
					<td>Vin number</td><td><input type="text" name="vin"></td>
				</tr>
				<tr>
					<td>Fuel Type</td><td><input type="text" name="fuel"></td>
				</tr>
				<tr>
					<td>Accessories</td><td><input type="text" name="accessories"></td>
				</tr>
				<tr>
					<td>Listing Price</td><td><input type="text" name="listing_price"></td>
				</tr>
				<tr>
					<td>Secret Minimum</td><td><input type="text" name="secret_min"></td>
				</tr>
				<tr>
					<td>Start Date (mm/dd/yyyy)</td><td><input type="text" name="start_date"></td>
				</tr>
				<tr>
					<td>Start Time (hh:mm)</td><td><input type="text" name="start_time"></td>
				</tr>
				<tr>
					<td>End Date</td><td><input type="text" name="end_date"></td>
				</tr>
				<tr>
					<td>End Time (hh:mm)</td><td><input type="text" name="end_time"></td>
				</tr>
				<tr>
					<td>Description</td><td><input type="text" name="s_date"></td>
				</tr>
			</table>
			<input type="submit" value="Create Auction">
		</form>
	<br>

	
</body>
</html>