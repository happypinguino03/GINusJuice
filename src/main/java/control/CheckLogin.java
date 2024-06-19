package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Utente;
/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtenteControl utenteC=new UtenteControl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		System.out.println("la password all'inizio vale "+password);
		Utente utente=controlloTutto(email,password);
		if(utente==null)
		{
			//response.sendRedirect(".WebContent/login.jsp");
			String redirectURL = request.getContextPath() + "/login.jsp";
			response.sendRedirect(redirectURL);
		}
		else
		{
			HttpSession oldSession= request.getSession(false);//se non esiste non la crea
			if(oldSession!=null)
				oldSession.invalidate();
			HttpSession sessione=request.getSession();
			sessione.setAttribute("email",utente.getEmail() );
			sessione.setAttribute("nome", utente.getNome());
			sessione.setAttribute("cognome", utente.getCognome());
			sessione.setAttribute("ruolo", utente.getRuolo());
			String redirectURL = request.getContextPath() + "/successo.jsp";
			response.sendRedirect(redirectURL);
		}
	}
	
	private Utente controlloTutto(String email,String password)
	{
		
			Utente u= utenteC.controlloLogin(email, password);
			if(u.getPassword_hash()==null)//perchè compare to string non funziona con il null
				return null;
			if(u.getPassword_hash().compareTo(password)==0|| u.getPassword_hash()==null)
			{
				System.out.println(u.getPassword_hash());
				return u;
			}
			else 
				return null;
		
	}

}