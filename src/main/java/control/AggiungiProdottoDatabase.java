package control;

import java.io.IOException;
import model.ProdottoDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prodotto;

/**
 * Servlet implementation class AggiungiProdottoDatabase
 */
@WebServlet("/Admin/AggiungiProdottoDatabase")
public class AggiungiProdottoDatabase extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProdottoDAO prodottoDAO=new ProdottoDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiProdottoDatabase() {
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
		String id=request.getParameter("id");
		String nome=request.getParameter("nome");
		String descrizione=request.getParameter("descrizione");
		String prezzo=request.getParameter("prezzo");
		String iva=request.getParameter("iva");
		String quantita= request.getParameter("quantità");
		Prodotto p=new Prodotto(id,nome,descrizione,prezzo,iva,quantita);
		prodottoDAO.inserisciProdotto(p);
		response.sendRedirect(request.getContextPath()+"/Admin/pannelloControllo.jsp");
	}

}
