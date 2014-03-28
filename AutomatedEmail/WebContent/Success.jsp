<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<title>Insert title here</title>
</head>
<body>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<form>
	<h1> Your Message Was a Success! Thanks For Using A Note From The Past!</h1>
		<% response.setHeader("Refresh", "2;url=CheckDate"); %>
		
	</form>
</body>
</html>