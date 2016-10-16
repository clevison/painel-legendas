package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Equipe;
import model.Usuario;

public class EquipeDAO {
	ConexaoMySQL conexao = new ConexaoMySQL();
   
    public int solicitar(Equipe equipe) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "INSERT INTO solicitacao_equipe(id_usu,nome, foto) VALUES (" 
                    + "'" + equipe.getAdmim().getId_Usuario() + "', " + "'" + "'" + equipe.getNome() + "', " +  "'" + equipe.getFoto()  + "')";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
    
    public int aprovar(Equipe equipe) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "INSERT INTO equipe(nome, foto, admim) VALUES (" 
                    + "'" + equipe.getNome() + "', " + "'" + equipe.getFoto() + "'," + "'" + equipe.getAdmim().getId_Usuario() + "')";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
    
    public int updateName(Equipe equipe) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "UPDATE equipe SET nome = '" + equipe.getNome() + "'"
                    + " WHERE id_equ = '" + equipe.getId() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
    
    public int updatePhoto(Equipe equipe) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "UPDATE equipe SET foto = '" + equipe.getFoto() + "'"
                    + " WHERE id_equ = '" + equipe.getId() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
    
    public int updateAdmim(Equipe equipe, Usuario usuario) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "UPDATE equipe SET Admim = '" + usuario.getId_Usuario() + "'"
                    + " WHERE id_equ = '" + equipe.getId() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }   
   	    
    public int delete(Equipe equipe) throws SQLException {
        Statement stmt;
        try {
            stmt = conexao.conexaoMySQL().createStatement();
            String exe = "DELETE FROM equipe  WHERE id_equ = '" + equipe.getId() +"'";
            stmt.executeUpdate(exe);
            return 1;
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }
    
    public ArrayList<Equipe> listarEquipes() throws SQLException{
        ResultSet rs;
        PreparedStatement pstm;
        ArrayList<Equipe> equipes = new ArrayList<>();
        UsuarioDAO admim = new UsuarioDAO();
        try {
            pstm = conexao.conexaoMySQL().prepareStatement("SELECT * FROM equipe");
            rs = pstm.executeQuery();
            while (rs.next()) {
            	Equipe equipe = new Equipe();
                equipe.setId(Integer.parseInt(rs.getString("id_equ")));
            	equipe.setNome(rs.getString("nome"));
            	equipe.setFoto(rs.getString("foto"));            	
            	equipe.setAdmim(admim.buscarPorId(Integer.parseInt(rs.getString("admim"))));
            	equipes.add(equipe);
            }
            return equipes;
        } catch (SQLException e) {
        	throw new SQLException("Erro: " + e.getMessage());
        }
    }
    
    public boolean isExistePesquisa(String nomeCampo,String pesquisa) throws SQLException {
        ResultSet rs;
        try {
            String exe = "select * FROM usuario  WHERE "+ nomeCampo + "= '" + pesquisa +"'";
            PreparedStatement pstm = conexao.conexaoMySQL().prepareStatement(exe);
            rs = pstm.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }     
}
