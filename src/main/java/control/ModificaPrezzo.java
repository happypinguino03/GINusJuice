package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProdottoDAO;

/**
 * Servlet implementation class ModificaPrezzo
 */
@WebServlet("/ModificaPrezzo")
public class ModificaPrezzo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProdottoDAO p=new ProdottoDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificaPrezzo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		double prezzo=Double.parseDouble(request.getParameter("prezzo"));
		int id=Integer.parseInt(request.getParameter("id"));
		p.modificaPrezzo(id, prezzo);
		response.sendRedirect(request.getContextPath()+"/prodottiAdmin.jsp");
		System.out.println("sono qui");
	}

}

