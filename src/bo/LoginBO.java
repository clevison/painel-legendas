package bo;

import java.sql.SQLException;

import dao.LoginDAO;


public class LoginBO implements IAutenticavel {
   // @Override
    public int logar(String nick, String senha) throws SQLException {
        
        if (validarLogin(nick, senha)) {
            LoginDAO logDao =  new LoginDAO();
            int tipoUsuario = logDao.logar(nick, senha);

            switch(tipoUsuario){
                case 1:
                   
                    break;
                case 2:
                
                    break;
                default:
                    
                    break;
            }
            return tipoUsuario;
        }
       return 0;
    }
   public boolean validarLogin(String matricula, String senha){
       if (matricula.length() > 0 && senha.length() > 0) {
           return true;
       }else{
           return false;
       }
   }
}
