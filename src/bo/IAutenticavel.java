package bo;

import java.sql.SQLException;

public interface IAutenticavel {
	 public int logar(String nick, String senha) throws SQLException;
}
