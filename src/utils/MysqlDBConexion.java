package utils;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 * @author Josue
 *
 */
public class MysqlDBConexion {
	public static Connection getConexion(){
		Connection cn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://localhost/instituto_2021_DAMI?serverTimezone=UTC","root","mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cn;	
	}
}
