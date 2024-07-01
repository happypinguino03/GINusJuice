package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import control.ConnectionPool;

public class OrdineDAO {
	public List<Ordine> prendiOrdini(String email,String data1,String data2){
		
		Connection con;
		List<Ordine> lista=new ArrayList<Ordine>();
		try {
			con = ConnectionPool.getConnection();
			 String query = "SELECT * FROM ordine WHERE email = ? AND created_at BETWEEN ? AND ?";
			 PreparedStatement ps = con.prepareStatement(query);

	            ps.setString(1, email);
	            ps.setString(2, data1);
	            ps.setString(3, data2);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
                    int ordineId = rs.getInt("ordine_id");
                    double totale = rs.getDouble("totale");
                    String createdAt = rs.getString("created_at");
                    Ordine ordine=new Ordine(ordineId,rs.getString("email"),totale,createdAt);
                   // System.out.printf("Ordine ID: %d, Totale: %.2f, Creato il: %s%n", ordineId, totale, createdAt);
                    lista.add(ordine);
                }
	            con.close();
	            ps.close();
	            return lista;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;
	}
}
