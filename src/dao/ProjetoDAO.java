package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import model.Equipe;
import model.Projeto;


public class ProjetoDAO {
	
		ConexaoMySQL conexao = new ConexaoMySQL();
		
	    public int insert(Projeto projeto) throws SQLException {
	        Statement stmt;
	        try {
	            stmt = conexao.conexaoMySQL().createStatement();
	            String exe = "INSERT INTO projeto(id_equ, release_proj, link_torrent, link_legenda, revisor1, revisor2, dt_inicio, dt_termino) VALUES (" 
	                    + "'" + projeto.getEquipe().getId() + "', " + "'" + projeto.getRelease()+ "', " +"'" + projeto.getLink_Torrent()+ "', " + "'" + projeto.getLink_Legenda() + "', " 
	            		+ "'" + projeto.getRevisor1() + "', " + "'" + projeto.getRevisor2() + "'," + "'" + projeto.getDt_Inicio() + "',"  + " '"  + projeto.getDt_Termino() + "')";
	            stmt.executeUpdate(exe);
	            return 1;
	        } catch (SQLException e) {
	            throw new SQLException("Erro: " + e.getMessage());
	        }
	    }       
	    
	    public int update(Projeto projeto) throws SQLException {
	        Statement stmt;
	        try {
	            stmt = conexao.conexaoMySQL().createStatement();
	            String exe = "UPDATE projeto SET release_proj='" + projeto.getRelease() + "', " + "link_torrent = '" + projeto.getLink_Torrent()+ "'," + "link_legenda = '" + projeto.getLink_Legenda() + "',"
	            		+ "revisor1 = '" + projeto.getRevisor1() + "'," + "revisor2 = '" + projeto.getRevisor2() + "'," + "dt_inicio = '" + projeto.getDt_Inicio() + "'," + "dt_termino='" + projeto.getDt_Termino() + "'"
	                    + " WHERE id_pro = '" + projeto.getId_Pro() +"'";
	            stmt.executeUpdate(exe);
	            return 1;
	        } catch (SQLException e) {
	            throw new SQLException("Erro: " + e.getMessage());
	        }
	    }   
	    
   
	   	    
	    public int delete(Projeto projeto) throws SQLException {
	        Statement stmt;
	        try {
	            stmt = conexao.conexaoMySQL().createStatement();
	            String exe = "DELETE FROM projeto  WHERE id_pro = '" + projeto.getId_Pro() +"'";
	            stmt.executeUpdate(exe);
	            return 1;
	        } catch (SQLException e) {
	            throw new SQLException("Erro: " + e.getMessage());
	        }
	    }  
	    
	    public ArrayList<Projeto> listarProjetos(Equipe equipe) throws SQLException{
	        ResultSet rs;
	        PreparedStatement pstm;
	        ArrayList<Projeto> projetos = new ArrayList<>();
	        UsuarioDAO revisor1 = new UsuarioDAO();
	        UsuarioDAO revisor2 = new UsuarioDAO();
	        try {
	            pstm = conexao.conexaoMySQL().prepareStatement("SELECT * FROM projeto where id_equ = " + equipe.getId());
	            rs = pstm.executeQuery();
	            while (rs.next()) {
	            	Projeto projeto = new Projeto();
	                projeto.setId(Integer.parseInt(rs.getString("id_pro")));
	            	projeto.setRelease(rs.getString("release_proj"));
	            	projeto.setLink_Torrent(rs.getString("link_torrent"));
	            	projeto.setLink_Legenda(rs.getString("link_legenda"));
	            	projeto.setRevisor1(revisor1.buscarPorId(Integer.parseInt(rs.getString("revisor1"))));
	            	projeto.setRevisor2(revisor2.buscarPorId(Integer.parseInt(rs.getString("revisor2"))));
	            	projeto.setDt_Inicio(rs.getString("dt_inicio"));
	            	projeto.setDt_Termino(rs.getString("dt_termino"));
	            	projetos.add(projeto);
	            }
	            return projetos;
	        } catch (SQLException e) {
	        	throw new SQLException("Erro: " + e.getMessage());
	        }
	    }
}
