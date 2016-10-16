package model;

public class Slot {
	private int id_Slot;
	private Projeto projeto;
	private String nome;
	private Usuario membro;
	private String arquivo;
	
	public int getId_Slot() {
		return id_Slot;
	}
	public void setId(int id) {
		this.id_Slot = id;
	}
	public Projeto getProjeto() {
		return projeto;
	}
	public void setProjeto(Projeto projeto) {
		this.projeto = projeto;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Usuario getMembro() {
		return membro;
	}
	public void setMembro(Usuario membro) {
		this.membro = membro;
	}
	public String getArquivo() {
		return arquivo;
	}
	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}
}
