package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import control.ConnectionPool;

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
			//System.out.println(password);
			while(rs.next())
			{
				u.setEmail(rs.getString("email"));
				u.setNome(rs.getString("nome"));
				u.setCognome(rs.getString("cognome"));
				u.setPassword_hash(rs.getString("password_hash"));
				u.setRuolo(rs.getInt("ruolo"));
			}
			//System.out.println(u);
			ps.close();
			con.close();
			System.out.println("nella funzione l'utente vale"+u);
			return u;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
		}
	
	
	
	
	
	
	
	
	//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
	
	public boolean registrazione(String email,String nome,String cognome,String password_hash)
	{
		Utente u=new Utente();
		try {
			Connection con=ConnectionPool.getConnection();
			System.out.println("l'email passata è uguale a : " + email);
			String sql="Select * FROM utente WHERE email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			System.out.println("prima del while");
			if(!(rs.next()))//non ci sta l'email
			{
				u.setEmail(email);
				u.setNome(nome);
				u.setCognome(cognome);
				u.setPassword_hash(password_hash);
				u.setRuolo(0);
				System.out.println(u);
				ps.close();
				con.close();
				inserimento(u);
				return true;
			}
			else//ci sta l'email
			{
				ps.close();
				con.close();
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public void inserimento(Utente u)
	{
		System.out.println("ciaoooooooooo");
		System.out.println(u);
		try {
			Connection con=ConnectionPool.getConnection();
			String sql="INSERT INTO utente (email, nome, cognome, password_hash, ruolo) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, u.getEmail());
			ps.setString(2, u.getNome());
			ps.setString(3, u.getCognome());
			ps.setString(4, u.getPassword_hash());
			ps.setInt(5, 0);
			ps.executeUpdate();
			ps.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
