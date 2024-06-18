<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="control.ConnectionPool" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>verifichiamo</title>
</head>
<body>
<%
    try {
        // Ottieni una connessione dal pool
        Connection conn = ConnectionPool.getConnection();

        // Query per recuperare tutti i record dalla tabella Utenti
        String query = "SELECT * FROM utente";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        // Stampa i dati
        while (rs.next()) {
        	 out.println("email: " + rs.getString("email"));
            out.println("Nome: " + rs.getString("nome"));
            out.println("Cognome: " + rs.getString("cognome"));
            out.println("password: " + rs.getString("password_hash"));
            out.println("<br>"); // Aggiungi una riga vuota tra i record
        }

        // Rilascia la connessione
        ConnectionPool.releaseConnection(conn);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>