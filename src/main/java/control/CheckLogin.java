package control;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Utente;
import model.UtenteControl;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UtenteControl utenteC= new UtenteControl();   
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
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Utente utente=controlloTutto(email,password);
		if(utente==null)
		{
			//System.out.println("l'utente è null mi trovo nell'if");
			//response.sendRedirect(".WebContent/login.jsp");
			String redirectURL = request.getContextPath() + "/login.jsp";
			response.sendRedirect(redirectURL);
			return ;
		}
		else
		{
			System.out.println("l'utente non è null");
			HttpSession oldSession= request.getSession(false);//se non esiste non la crea
			if(oldSession!=null)
				oldSession.invalidate();
			HttpSession sessione=request.getSession();
			sessione.setAttribute("email",utente.getEmail() );
			sessione.setAttribute("nome", utente.getNome());
			sessione.setAttribute("cognome", utente.getCognome());
			sessione.setAttribute("ruolo", utente.getRuolo());
			sessione.setAttribute("autentificazione", utente.getEmail()+"1234567890");			//String redirectURL = request.getContextPath() + "/index.jsp";
			//response.sendRedirect(redirectURL);


		}
		System.out.println(utente.getRuolo());
		if(utente.getRuolo()==1)
		{
		response.sendRedirect(request.getContextPath()+"/Admin/pannelloControllo.jsp");
		//System.out.println(utente.getRuolo());
		}
		else
			response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	
	
	
	
	private Utente controlloTutto(String email,String password)
	{
		
			Utente u= utenteC.controlloLogin(email, password);
			if(u.getPassword_hash()==null)//perchè compare to string non funziona con il null
				return null;
			if(u.getPassword_hash().compareTo(password)==0|| u.getPassword_hash()==null)
			{
				return u;
			}
			else 
				return null;
		
	}
	

}


