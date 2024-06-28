package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import control.ConnectionPool;

public class InserisciOrdine {

    public boolean inserisci(String email, double totale,String acquisti) {
        try {
            Connection con = ConnectionPool.getConnection(); // Assumendo che ConnectionPool gestisca la connessione al database

            // Ottieni la data e l'ora correnti
            LocalDateTime currentDateTime = LocalDateTime.now();

            // Formatta la data e l'ora secondo il formato richiesto per MySQL DATETIME
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String formattedDateTime = currentDateTime.format(formatter);

            // Prepara e esegui l'inserimento dell'ordine
            String sql = "INSERT INTO ordine (ordine_id, email, totale, created_at,acquisti) VALUES (NULL, ?, ?, ?,?)";
            //System.out.println(acquisti);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setDouble(2, totale);
            ps.setTimestamp(3, Timestamp.valueOf(currentDateTime));
            ps.setString(4, acquisti);
            int rowsInserted = ps.executeUpdate();
            con.close();
            ps.close();

            return rowsInserted > 0; // Ritorna true se almeno una riga è stata inserita con successo
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
