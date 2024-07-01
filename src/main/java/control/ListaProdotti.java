package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ListaProdottiDAO;
import model.Prodotto;

/**
 * Servlet implementation class ListaProdotti
 */
@WebServlet("/ListaProdotti")
public class ListaProdotti extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List <Prodotto> listaProdotti=new ArrayList<>();
	private ListaProdottiDAO controllo= new ListaProdottiDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListaProdotti() {
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
		HttpSession sessione= request.getSession();
		/*per risolvere il fatto che ogni volta che clickiamo sullo sho usero una variabile di sessione che quando
		 * varrà aggiungerà le cose nella lista(in seguito modifico la servlet per il problema admin) 
		*/
		List <Prodotto> listaProdottiServlet=new ArrayList<>();
		listaProdotti= controllo.aggiungiNelloShop();
		for( Prodotto p : listaProdotti)
			if(!(listaProdottiServlet.contains(p)))
				listaProdottiServlet.add(p);
		sessione.setAttribute("listaProdotti", listaProdottiServlet);
		
		//System.out.println("nella sfaccim e servlet la lista vale :" +listaProdotti);
		response.sendRedirect(request.getContextPath()+"/shop.jsp");
	}
	
}
