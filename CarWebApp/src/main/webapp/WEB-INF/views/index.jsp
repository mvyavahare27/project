<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Email: {email}
<h1>Welcome to car rental services</h1>
<form action="checkdata" method="POST" ModelAttribute="data">
	City:<input type="text" name="city"><br>
	date:<input type="date" name="pick_up_date"><br>
	time:<input type="time" name="pick_up_time"><br>
	return date:<input type="date" name="return_date"><br>
	return time:<input type="time" name="return_time"><br>
	<input type="submit" value="check">
	
</form>
${exMsg}
</body>
</html>