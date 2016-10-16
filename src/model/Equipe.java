package model;

public class Equipe {
	private int id_Equipe;
	private String nome;
	private String foto;
	private Usuario admim;
	private Usuario[] membros;
	
	public int getId() {
		return id_Equipe;
	}
	public void setId(int id) {
		this.id_Equipe = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public Usuario getAdmim() {
		return admim;
	}
	public void setAdmim(Usuario admim) {
		this.admim = admim;
	}	
	public Usuario[] getMembros() {
		return membros;
	}
	public void setMembros(Usuario[] membros) {
		this.membros = membros;
	}
}
