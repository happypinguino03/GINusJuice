package model;

import java.util.ArrayList;

public class Carrello {
	private ArrayList<Prodotto> aggiunti;

	@Override
	public String toString() {
		return "Carrello [aggiunti=" + aggiunti + "]";
	}

	public ArrayList<Prodotto> getAggiunti() {
		return aggiunti;
	}

	public void setAggiunti(ArrayList<Prodotto> aggiunti) {
		this.aggiunti = aggiunti;
	}
	
	public Carrello()
	{
		this.aggiunti=new ArrayList<>();
	}

	public void aggiungiProdotto(Prodotto prodotto)
	{
		aggiunti.add(prodotto);
	}
	
	public double ritornaTotale()
	{
		return aggiunti.stream().mapToDouble(p->p.getPrezzo()).sum();
	}
	
	public void eliminaProdotto (String nome)
	{
		aggiunti.removeIf(prodotto->prodotto.getNome().equals(nome));
	}

}



