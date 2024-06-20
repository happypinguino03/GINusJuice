package model;

public class Prodotto {
	int id;
	String nome;
	String descrizione;
	double prezzo;
	int iva;
	int quantita;
	public Prodotto(int id, String nome, String descrizione, double prezzo, int iva, int quantita) {
		super();
		this.id = id;
		this.nome = nome;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
		this.iva = iva;
		this.quantita = quantita;
	}
	public Prodotto()
	{
		super();
		this.id=0;
		this.nome=null;
		this.descrizione=null;
		this.prezzo=0;
		this.iva=22;
		this.quantita=0;
	}
	
	 public Prodotto(String id, String nome, String descrizione, String prezzo, String iva, String quantita) {
	        this.id = Integer.parseInt(id);
	        this.nome = nome;
	        this.descrizione = descrizione;
	        this.prezzo = Float.parseFloat(prezzo);
	        this.iva = Integer.parseInt(iva);
	        this.quantita = Integer.parseInt(quantita);
	    }
	
	@Override
	public String toString() {
		return "Prodotto [id=" + id + ", nome=" + nome + ", descrizione=" + descrizione + ", prezzo=" + prezzo
				+ ", iva=" + iva + ", quantita=" + quantita + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	public int getIva() {
		return iva;
	}
	public void setIva(int iva) {
		this.iva = iva;
	}
	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}
	
	
	
}
