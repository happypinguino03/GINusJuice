package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import control.ConnectionPool;

public class ProdottoDAO {
	
	
	public Prodotto getProdotto(int id)
	{
		Connection con;
		try {
			con = ConnectionPool.getConnection();
			String sql="Select * FROM prodotto WHERE prodotto_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			Prodotto prodotto=new Prodotto();
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				prodotto.setId(rs.getInt("prodotto_id"));
				prodotto.setNome(rs.getString("nome"));
				prodotto.setDescrizione("descrizione");
				prodotto.setPrezzo(rs.getDouble("prezzo"));
				prodotto.setIva(rs.getInt("iva"));
				prodotto.setQuantita(rs.getInt("quantità"));
			}
			con.close();
			ps.close();
			return prodotto;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		}
	
	public void inserisciProdotto(Prodotto p)
	{
		try {
			Connection con = ConnectionPool.getConnection();
			String sql="INSERT INTO prodotto(prodotto_id,nome,descrizione,prezzo,iva,quantità)VALUES(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, p.getId());
			ps.setString(2, p.nome);
			ps.setString(3, p.getDescrizione());
			ps.setDouble(4, p.getPrezzo());
			ps.setString(5, String.valueOf(p.getIva())); // Assicurati che p.getIva() restituisca uno dei valori del ENUM
			ps.setInt(6, p.getQuantita());
			ps.executeUpdate();
			con.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void modificaNome(int prodottoId,String nome)
	{
		try {
			Connection con= ConnectionPool.getConnection();
			String updateQuery = "UPDATE prodotto SET nome = ? WHERE prodotto_id = ?";
			PreparedStatement ps = con.prepareStatement(updateQuery);
			 ps.setString(1, nome);
		        ps.setInt(2, prodottoId);
		        
		        int rowsAffected = ps.executeUpdate();
		        
		        if (rowsAffected > 0) 
		            System.out.println("Il nome del prodotto è stato aggiornato con successo.");
		         else 
		            System.out.println("Nessun prodotto trovato con l'ID specificato.");
		        con.close();
		        ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void eliminaProdotto(int prodottoId)
	{
		try {
			String deleteQuery = "DELETE FROM prodotto WHERE prodotto_id = ?";
			Connection con = ConnectionPool.getConnection();
			PreparedStatement ps = con.prepareStatement(deleteQuery);
			 ps.setInt(1, prodottoId);

	            int rowsAffected = ps.executeUpdate();

	            if (rowsAffected > 0) 
	                System.out.println("Il prodotto è stato eliminato con successo.");
	              else 
	                System.out.println("Nessun prodotto trovato con l'ID specificato.");
	            
	            con.close();
	            ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	public void modificaDescrizione(int id,String descrizione)
	{
		try {
			Connection con= ConnectionPool.getConnection();
			String updateQuery = "UPDATE prodotto SET descrizione = ? WHERE prodotto_id = ?";
			PreparedStatement ps = con.prepareStatement(updateQuery);
			 ps.setString(1, descrizione);
		        ps.setInt(2, id);
		        
		        int rowsAffected = ps.executeUpdate();
		        
		        if (rowsAffected > 0) 
		            System.out.println("Il nome del prodotto è stato aggiornato con successo.");
		         else 
		            System.out.println("Nessun prodotto trovato con l'ID specificato.");
		        con.close();
		        ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void modificaPrezzo(int id,double prezzo)
	{
		try {
			Connection con= ConnectionPool.getConnection();
			String updateQuery = "UPDATE prodotto SET prezzo = ? WHERE prodotto_id = ?";
			PreparedStatement ps = con.prepareStatement(updateQuery);
			 ps.setDouble(1, prezzo);
		        ps.setInt(2, id);
		        
		        int rowsAffected = ps.executeUpdate();
		        
		        if (rowsAffected > 0) 
		            System.out.println("Il nome del prodotto è stato aggiornato con successo.");
		         else 
		            System.out.println("Nessun prodotto trovato con l'ID specificato.");
		        con.close();
		        ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void modificaQuantita(int id,int quantita)
	{
		try {
			Connection con= ConnectionPool.getConnection();
			String updateQuery = "UPDATE prodotto SET quantità = ? WHERE prodotto_id = ?";
			PreparedStatement ps = con.prepareStatement(updateQuery);
			 ps.setInt(1, quantita);
		        ps.setInt(2, id);
		        
		        int rowsAffected = ps.executeUpdate();
		        
		        if (rowsAffected > 0) 
		            System.out.println("la quantita del prodotto è stato aggiornato con successo.");
		         else 
		            System.out.println("Nessun prodotto trovato con l'ID specificato.");
		        con.close();
		        ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
