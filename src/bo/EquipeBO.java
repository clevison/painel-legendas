package bo;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.EquipeDAO;
import model.Equipe;
import model.Usuario;

public class EquipeBO {
		//Creio que caberia polimorfismo entre esse e o outro método
		public boolean solicitarCadastro(Usuario usuario, String nome, String foto) throws SQLException{
	        
	        if (validarNome(nome)) {
	            try {
	               //Cria a Equipe
	               Equipe equipe = new Equipe();
	               equipe.setAdmim(usuario);
	               equipe.setNome(nome);
	               equipe.setFoto(foto);
	               
	               EquipeDAO equipeDAO = new EquipeDAO();
	               equipeDAO.solicitar(equipe);
	               return true;
	            } catch (Exception e) {
	                return false;
	            }           
	        }else{
	            return false;
	        }
	        
	    }
		public boolean aprovarCadastro(Usuario usuario, String nome, String foto) throws SQLException{
	        
	        if (validarNome(nome)) {
	            try {
	               //Cria a Equipe
	               Equipe equipe = new Equipe();
	               equipe.setAdmim(usuario);
	               equipe.setNome(nome);
	               equipe.setFoto(foto);
	               
	               EquipeDAO equipeDAO = new EquipeDAO();
	               equipeDAO.aprovar(equipe);
	               return true;
	            } catch (Exception e) {
	                return false;
	            }           
	        }else{
	            return false;
	        }
	        
	    }
	    
	    public boolean validarNome(String nome) throws SQLException{
	    	EquipeDAO equipeDAO = new EquipeDAO();
	        if (equipeDAO.isExistePesquisa("nome", nome)) {
	            return true;
	        }else{
	            //Tratar a entrada inválida
	            return false;
	        }
	    }
	    public ArrayList<Equipe> listarEquipes() throws SQLException{
	    	//Tratar a exceção
	    	EquipeDAO equipeDAO =  new EquipeDAO();
	        return equipeDAO.listarEquipes();
	    }
}
