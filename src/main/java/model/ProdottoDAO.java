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
}
