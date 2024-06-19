<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>SHOP</h1>
<br>
<%
	ArrayList <Prodotto> lista=(ArrayList<Prodotto>) session.getAttribute("listaProdotti");
%>

<%for(Prodotto p:lista){
%>
<h3> <%= p.getNome() %>     </h3>

<% 
}
%>

</body>
</html>