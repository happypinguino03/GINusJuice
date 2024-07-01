package control;

import model.Prodotto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/FilterProductsServlet")
public class FilterProductsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recupera i parametri di filtro dal frontend
        int minPrice = Integer.parseInt(request.getParameter("minPrice"));
        int maxPrice = Integer.parseInt(request.getParameter("maxPrice"));

        // Recupera la lista dei prodotti dal contesto della sessione
        ArrayList<Prodotto> listaProdotti = (ArrayList<Prodotto>) request.getSession().getAttribute("listaProdotti");

        // Filtra i prodotti in base al prezzo
        List<Prodotto> filteredProducts = new ArrayList<>();
        if (listaProdotti != null) {
            for (Prodotto p : listaProdotti) {
                if (p.getPrezzo() >= minPrice && p.getPrezzo() <= maxPrice) {
                    filteredProducts.add(p);
                }
            }
        }

        // Scrivi i dati JSON nella risposta
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        out.print("[");
        boolean first = true;
        for (Prodotto p : filteredProducts) {
            if (!first) {
                out.print(",");
            }
            out.print("{");
            out.print("\"id\": " + p.getId() + ",");
            out.print("\"nome\": \"" + p.getNome() + "\",");
            out.print("\"descrizione\": \"" + p.getDescrizione() + "\",");
            out.print("\"prezzo\": " + p.getPrezzo() + ",");
            out.print("\"quantita\": " + p.getQuantita());
            out.print("}");
            first = false;
        }
        out.print("]");

        out.flush();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

