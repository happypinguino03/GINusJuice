package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carrello;
import model.Prodotto;

/**
 * Servlet implementation class AggiungiProdotto
 */
@WebServlet("/AggiungiProdotto")
public class AggiungiProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private ArrayList <Prodotto> aggiunti= new ArrayList<>();
	private Carrello c=new Carrello();
	Map<String, Integer> prodottiMap = new HashMap<>();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiProdotto() {
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
		// TODO Auto-generated method stub
		//String autentificazione=request.getSession(false).getAttribute("autentificazione")+"123456789";
		//String email=request.getSession(false).getAttribute("email")+"123456789";
		//if(!(autentificazione.equals(email)))
			//	response.sendRedirect(request.getContextPath()+"/login.jsp");
		String id =  request.getParameter("prodottoId");// da convertire		System.out.println(id);
		String nome= request.getParameter("nome");
		String descrizione= request.getParameter("descrizione");
		String prezzo= request.getParameter("prezzo");// da convertire
		String iva= request.getParameter("iva");// da convertire
		String quantita= request.getParameter("quantita");// da convertire
		//System.out.println("id "+id + " nome "+ nome+" descrizione "+ descrizione+ " prezzo "+ prezzo+ " iva " + iva+ " quantita "+quantita);
		/*Prodotto prodotto=new Prodotto(id,nome,descrizione,prezzo,iva,quantita);
		//System.out.println(prodotto);
		HttpSession session=request.getSession();
		c.aggiungiProdotto(prodotto);
		session.setAttribute("carrello", c);
		//if(prodottiMap.containsKey(nome))//l'utente ha già selezionato il prodotto
			//prodottiMap.put(nome, prodottiMap.get(nome)+1);
		
			
		response.sendRedirect(request.getContextPath()+"/shop.jsp");*/
	}

}
