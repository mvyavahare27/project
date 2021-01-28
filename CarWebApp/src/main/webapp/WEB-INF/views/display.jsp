<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h3 style="color: red;">Welcome ${email}</h3>
<form>
	<c:if test="${not empty lists}">
    <c:forEach items="${lists}" var="lists">
       
       <form>
       		<h3>${lists.getCarname()}</h3>
       		<a href='/CarWebApp/show?id=${lists.getId()}&name=${lists.getCarname()}'>BookNow</a>	
       </form>
</c:forEach>
</c:if>
</form>
<p>${carbookedmsg} ${carbooked}</p>

</body>
</html>