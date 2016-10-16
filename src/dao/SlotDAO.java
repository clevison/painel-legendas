package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import model.Projeto;
import model.Slot;
import model.Usuario;


public class SlotDAO {
	ConexaoMySQL conexao = new ConexaoMySQL();
   
    public int insert(Slot slot) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "INSERT INTO projeto_slot(id_pro, nome, id_mem, arquivo) VALUES (" 
            		+ "'" + slot.getProjeto().getId_Pro() + "', "  + "'" + slot.getNome() + "', " + "'" + slot.getMembro().getId_Usuario() + "'," + "'" + slot.getArquivo() + "')";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }       
    
    public int updateArquivo(Slot slot,String arquivo) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "UPDATE projeto_slot SET arquivo = '" + arquivo + "'"
                    + " WHERE id_pro_slo = '" + slot.getId_Slot() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
    
   public int updateMembro(Slot slot, Usuario usuario) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "UPDATE projeto_slot SET id_mem = '" + usuario.getId_Usuario() + "'"
                    + " WHERE id_pro_slo = '" + slot.getId_Slot() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
   	    
    public int delete(Slot slot) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "DELETE FROM projeto_slot  WHERE id_pro_slo = '" + slot.getId_Slot() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }  
    public ArrayList<Slot> listarSlots(Projeto projeto) throws SQLException{
        ResultSet rs;
        PreparedStatement pstm;
        ArrayList<Slot> slots = new ArrayList<>();
        UsuarioDAO membro = new UsuarioDAO();
        try {
            pstm = conexao.conexaoMySQL().prepareStatement("SELECT * FROM projeto_slot where id_pro = " + projeto.getId_Pro());
            rs = pstm.executeQuery();
            while (rs.next()) {
            	Slot slot = new Slot();
            	slot.setId(Integer.parseInt(rs.getString("id_pro_slo")));
            	slot.setNome(rs.getString("nome"));
            	slot.setMembro(membro.buscarPorId(Integer.parseInt(rs.getString("id_mem"))));
            	slot.setArquivo(rs.getString("arquivo"));
            	slots.add(slot);
            }
            return slots;
        } catch (SQLException e) {
        	throw new SQLException("Erro: " + e.getMessage());
        }
     }
}
