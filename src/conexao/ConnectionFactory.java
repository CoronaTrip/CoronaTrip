package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    public Connection getConnection() {

	try {
	    String url = "jdbc:mysql://127.0.0.1:3306/db_viagem";
	    String user = "root";
	    String pass = "123";
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    return DriverManager.getConnection(url, user, pass);
	} catch (Exception e) {
	    throw new RuntimeException("Erro na conexão");
	}
    }

}
