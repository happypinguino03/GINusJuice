package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ordine;
import model.OrdineDAO;

/**
 * Servlet implementation class VediOrdini
 */
@WebServlet("/VediOrdini")
public class VediOrdini extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrdineDAO ordineDAO=new OrdineDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VediOrdini() {
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
		String data1=request.getParameter("data1");
		String data2=request.getParameter("data2");
		String email=request.getParameter("email");
		List<Ordine> lista=ordineDAO.prendiOrdini(email, data1, data2);
		HttpSession sessione= request.getSession();
		sessione.setAttribute("ordini", lista);
		response.sendRedirect(request.getContextPath()+"/ordini.jsp");
	}

}
