package control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Utente;

public class UtenteControl {
	
	
	public Utente controlloLogin(String email,String password)
	{
		Utente u=new Utente();
		try {
			Connection con=ConnectionPool.getConnection();
			String sql="Select * FROM utente WHERE email=? AND password_hash=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			System.out.println(password);
			while(rs.next())
			{
				u.setEmail(rs.getString("email"));
				u.setNome(rs.getString("nome"));
				u.setCognome(rs.getString("cognome"));
				u.setPassword_hash(rs.getString("password_hash"));
				u.setRuolo(rs.getInt("ruolo"));
			}
			System.out.println(u);
			ps.close();
			con.close();
			return u;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
		
		
	}
}
