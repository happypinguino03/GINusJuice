<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Carrello" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Carrello carrello=(Carrello) session.getAttribute("carrello"); 
	if(carrello==null)
%>
<h1>omm e merd accatt qualcosa</h1>
<%else { %>
<%} %><h1>ti si accatat qualcos</h1>

</body>
</html>