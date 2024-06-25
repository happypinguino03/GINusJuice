package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import control.ConnectionPool;

public class ListaProdottiDAO {
	public List<Prodotto> aggiungiNelloShop()
	{
		List <Prodotto> listaProdotti=new ArrayList<>();
		try {
			Connection con=ConnectionPool.getConnection();
			String sql="SELECT * FROM prodotto";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			    // Per ogni riga nel ResultSet, creare un nuovo oggetto Prodotto
			    Prodotto prodotto = new Prodotto();
			    
			    // Impostare i campi del prodotto con i valori dal ResultSet
			    prodotto.setId(rs.getInt("prodotto_id"));
			    prodotto.setNome(rs.getString("nome"));
			    prodotto.setDescrizione(rs.getString("descrizione"));
			    prodotto.setPrezzo(rs.getFloat("prezzo"));
			    prodotto.setIva(rs.getInt("iva"));
			    prodotto.setQuantita(rs.getInt("quantità"));
			    //System.out.println("nella servlet listaProdotti il prodotto vale : "+prodotto);
			    // Aggiungere il nuovo oggetto Prodotto alla lista
			    listaProdotti.add(prodotto);
			}
			
			
			
			ps.close();
			con.close();
			return listaProdotti;
			//System.out.println(listaProdotti);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaProdotti;
	}
}
