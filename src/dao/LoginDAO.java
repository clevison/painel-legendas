package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bo.IAutenticavel;

public class LoginDAO implements IAutenticavel{
	ConexaoMySQL conexao = new ConexaoMySQL();
    @Override
    public int logar(String nick, String senha) throws SQLException {
        ResultSet rs;
        int permissao;
        
        try {
            String exe = "select * FROM usuario  WHERE nick='"+ nick +"' AND senha='"+senha + "'";
            PreparedStatement pstm = conexao.conexaoMySQL().prepareStatement(exe);
            rs = pstm.executeQuery();
           
            if (rs.first()) {
            	permissao = rs.getInt("id_permissao");
                return permissao;
            }else{
                return 0;
            }
        } catch (SQLException e) {
            throw new SQLException("Erro: " + e.getMessage());
        }
    }
}
