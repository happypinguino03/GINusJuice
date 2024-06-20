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

import model.Prodotto;

/**
 * Servlet implementation class ListaProdotti
 */
@WebServlet("/ListaProdotti")
public class ListaProdotti extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List <Prodotto> listaProdotti=new ArrayList<>();
       
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con=ConnectionPool.getConnection();
			String sql="SELECT * FROM prodotto";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			    // Per ogni riga nel ResultSet, creare un nuovo oggetto Prodotto
			    Prodotto prodotto = new Prodotto();
			    
			    // Impostare i campi del prodotto con i valori dal ResultSet
			    prodotto.setId(rs.getInt("prodotto_id"));
			    prodotto.setNome(rs.getString("nome"));
			    prodotto.setDescrizione(rs.getString("descrizione"));
			    prodotto.setPrezzo(rs.getFloat("prezzo"));
			    prodotto.setIva(rs.getInt("iva"));
			    prodotto.setQuantita(rs.getInt("quantità"));
			    //System.out.println("nella servlet listaProdotti il prodotto vale : "+prodotto);
			    // Aggiungere il nuovo oggetto Prodotto alla lista
			    listaProdotti.add(prodotto);
			}
			System.out.println(listaProdotti);
			HttpSession sessione=request.getSession();
			sessione.setAttribute("listaProdotti", listaProdotti);
			ps.close();
			con.close();
			response.sendRedirect(request.getContextPath()+"/shop.jsp");
			//System.out.println(listaProdotti);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
