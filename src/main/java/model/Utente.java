package model;

public class Utente {
	private String email;
	private String nome;
	private String cognome;
	private String password_hash;
	private int ruolo;
	
	public Utente(String email, String nome, String cognome, String password_hash, int ruolo) {
		super();
		this.email = email;
		this.nome = nome;
		this.cognome = cognome;
		this.password_hash = password_hash;
		this.ruolo = ruolo;
	}
	
	public Utente()
	{
		super();
		this.email = null;
		this.nome = null;
		this.cognome = null;
		this.password_hash = null;
		this.ruolo = 0;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getPassword_hash() {
		return password_hash;
	}

	public void setPassword_hash(String password_hash) {
		this.password_hash = password_hash;
	}

	public int getRuolo() {
		return ruolo;
	}

	public void setRuolo(int ruolo) {
		this.ruolo = ruolo;
	}

	@Override
	public String toString() {
		return "utente [email=" + email + ", nome=" + nome + ", cognome=" + cognome + ", password_hash=" + password_hash
				+ ", ruolo=" + ruolo + "]";
	}
}
