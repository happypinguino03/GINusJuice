package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UtenteControl;

/**
 * Servlet implementation class RegistrazioneControl
 */
@WebServlet("/RegistrazioneControl")
public class RegistrazioneControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtenteControl utenteC=new UtenteControl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrazioneControl() {
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
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String nome=request.getParameter("nome");
		String cognome=request.getParameter("cognome");
		String password_hash=request.getParameter("password_hash");
		String indirizzo=request.getContextPath();
		boolean bool=utenteC.registrazione(email, nome, cognome, password_hash);
		if(bool==true)
			response.sendRedirect(indirizzo+"/login.jsp");
		else
			response.sendRedirect(indirizzo+"/registrazione.jsp");
		
	}

}
