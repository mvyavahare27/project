<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="logout">
	<input type="submit" value="logout" style="float: right;">
</form>
<h3 style="color: red;">User: ${email}</h3>
<center>
<form action="booking" method="POST" enctype="multipart/form-data" >
	<table border="1">
	<tr>
		<thead>
			<tr>	
			<input type="hidden" value="${ID}" name="carid">
			</tr>
			<tr>
				<input type="hidden" value="${name}" name="carname">
			</tr>
			<tr>
				<th>CarName:</th>
				<td><input type="text" value="${name}" name="carname" disabled></td>
			</tr>
			<tr>
				<th>city:</th>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<th>Delivery address::</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>Mobile no:</th>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<th>Upload License:</th>
				<td><input type="file" name="photo" size="50"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="book your car"></td>
			</tr>
		</thead>
	</tr>
	</table>
</form>
<p style="color:red;">${size_err}</p>
</center>

</body>
</html>