package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carrello;
import model.InserisciOrdine;

/**
 * Servlet implementation class AcquistaProdotto
 */
@WebServlet("/AcquistaProdotto")
public class AcquistaProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private InserisciOrdine ordine=new InserisciOrdine();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcquistaProdotto() {
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
		String email= request.getParameter("email");
		double tot=Float.parseFloat(request.getParameter("totale"));
		String coseComprate=request.getParameter("puttana");
		System.out.println(request.getParameterValues("puttana"));
		// Verifica se il parametro coseComprate è nullo o vuoto
	  // System.out.println("stiamo nella servlet e l'email vale: "+email+" il totale invece vale "+ tot+" coseComprate vale : "+ coseComprate);
		HttpSession sessione= request.getSession();
		//sessione.setAttribute("carrello", null);
		Carrello mammt=(Carrello) sessione.getAttribute("carrello");
		mammt.getAggiunti().clear();
		sessione.setAttribute("carrello", mammt);
		
		if(ordine.inserisci(email, tot,coseComprate))
		{
			System.out.println("ok");
		}
		else
			System.out.print("non tutto apposto");
		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}

}
