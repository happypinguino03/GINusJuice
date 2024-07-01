package model;

import java.util.Date;

public class Ordine {
	private int ordineId;
	private String email;
	private double totale;
	private Date createdAt;
	private String dataStringa;
	

	public int getOrdineId() {
		return ordineId;
	}
	public void setOrdineId(int ordineId) {
		this.ordineId = ordineId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public double getTotale() {
		return totale;
	}
	public void setTotale(double totale) {
		this.totale = totale;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Ordine()
	{
		this.ordineId=0;
		this.email=null;
		this.totale=0;
		this.createdAt=null;
		
	}
	
	public Ordine(int ordineId, String email, double totale, Date createdAt) {
		super();
		this.ordineId = ordineId;
		this.email = email;
		this.totale = totale;
		this.createdAt = createdAt;
		
	}
	public Ordine(int ordineId, String email, double totale, String stringa) {
		super();
		this.ordineId = ordineId;
		this.email = email;
		this.totale = totale;
		this.createdAt = null;
		this.dataStringa=stringa;
	}
	public String getDataStringa() {
		return dataStringa;
	}
	public void setDataStringa(String dataStringa) {
		this.dataStringa = dataStringa;
	}
}
