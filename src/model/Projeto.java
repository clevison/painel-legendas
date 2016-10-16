package model;

public class Projeto {
	private int id_Projeto;
	private Equipe equipe;
	private String release;
	private String link_Torrent;
	private String link_Legenda;
	private Usuario revisor1;
	private Usuario revisor2;
	private String dt_Inicio;
	private String dt_Termino;
	private Slot[] slots;
	
	public int getId_Pro() {
		return id_Projeto;
	}
	public void setId(int id) {
		this.id_Projeto = id;
	}
	public Equipe getEquipe() {
		return equipe;
	}
	public void setEquipe(Equipe equipe) {
		this.equipe = equipe;
	}
	public String getRelease() {
		return release;
	}
	public void setRelease(String release) {
		this.release = release;
	}
	public String getLink_Torrent() {
		return link_Torrent;
	}
	public void setLink_Torrent(String link_Torrent) {
		this.link_Torrent = link_Torrent;
	}
	public String getLink_Legenda() {
		return link_Legenda;
	}
	public void setLink_Legenda(String link_Legenda) {
		this.link_Legenda = link_Legenda;
	}
	public Usuario getRevisor1() {
		return revisor1;
	}
	public void setRevisor1(Usuario revisor1) {
		this.revisor1 = revisor1;
	}
	public Usuario getRevisor2() {
		return revisor2;
	}
	public void setRevisor2(Usuario revisor2) {
		this.revisor2 = revisor2;
	}
	public String getDt_Inicio() {
		return dt_Inicio;
	}
	public void setDt_Inicio(String dt_Inicio) {
		this.dt_Inicio = dt_Inicio;
	}
	public String getDt_Termino() {
		return dt_Termino;
	}
	public void setDt_Termino(String dt_Termino) {
		this.dt_Termino = dt_Termino;
	}
	
	public Slot[] getSlots() {
		return slots;
	}
	public void setSlots(Slot[] slots) {
		this.slots = slots;
	}
}
