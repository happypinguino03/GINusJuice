package control;

import java.io.IOException;

import model.Carrello;
import model.Prodotto;
import model.ProdottoDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CarrelloDiminuisci
 */
@WebServlet("/CarrelloDiminuisci")
public class CarrelloDiminuisci extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProdottoDAO prodottoDAO=new ProdottoDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarrelloDiminuisci() {
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
		HttpSession sessione=request.getSession();
		int prodottoId= Integer.parseInt(request.getParameter("prodottoId"));
		Prodotto prodotto=prodottoDAO.getProdotto(prodottoId);
		//System.out.println("l'id del prodotto passato è : " + prodottoId );
		//System.out.println("il prodotto restituido dalla classe dao è :" + prodotto);
		Carrello carrello=(Carrello) sessione.getAttribute("carrello");
		carrello.eliminaProdotto(prodotto);
		sessione.setAttribute("carrello", carrello);
		response.sendRedirect(request.getContextPath()+"/carrello.jsp");
		
	}

}
