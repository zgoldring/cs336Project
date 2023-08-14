<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
		<form method="get" action="HelloWorld.jsp">
			<table>
				<tr>    
					<td>Email</td><td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Password</td><td><input type="text" name="password"></td>
				</tr>
				<tr>
					<td>Name</td><td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Phone Number</td><td><input type="text" name="phone_number"></td>
				</tr>
				<tr>
					<td>Shipping Address</td><td><input type="text" name="shipping_address"></td>
				</tr>
				<tr>
					<td>Credit Card Number</td><td><input type="text" name="card_number"></td>
				</tr>
				<tr>
					<td>Expiration Date</td><td><input type="text" name="exp_date"></td>
				</tr>
				<tr>
					<td>CVC Number</td><td><input type="text" name="cvc"></td>
				</tr>
				<tr>
					<td>Billing Address</td><td><input type="text" name="billing_address"></td>
				</tr>
			</table>
			<input type="submit" value="Create New User">
		</form>
	<br>

</body>
</html>