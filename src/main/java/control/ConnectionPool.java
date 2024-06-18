package control;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;


public class ConnectionPool {
	
	private static List<Connection> freeDbConnections;// liste di oggetti connection
	
	//facciamo una funzione statica che viene eseguita una sola volta al caricamento dell'applicazione 
	static {
		freeDbConnections = new LinkedList<Connection>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");// carichiamo il driver del jdb
		} catch (ClassNotFoundException e) {
			System.out.println("DB driver not found:"+ e.getMessage());
		} 
	}

	
	private static synchronized Connection createDBConnection() throws SQLException {
		Connection newConnection = null;
		String ip = "localhost";
		String port = "3306";
		String db = "tsw";
		String username = "root";
		String password = "Loginme7!";

		newConnection = DriverManager.getConnection("jdbc:mysql://"+ ip+":"+ port+"/"+db+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", username, password);
		newConnection.setAutoCommit(true);
		return newConnection;
	}
	
	public static synchronized Connection getConnection() throws SQLException {
		Connection connection;// creazione dell'oggeto da ritornare
		//se esiste una connessione da prendere dalle liste la prendiamo
		if (!freeDbConnections.isEmpty()){
			connection = (Connection) freeDbConnections.get(0);
			freeDbConnections.remove(0);

			try {
				if (connection.isClosed())
					connection = getConnection();
			} catch (SQLException e) {
				connection.close();
				connection = getConnection();
			}
			//se la connessione non esiste la creiamo noi
		} else {
			connection = createDBConnection();		
		}

		return connection;
	}
	
	public static synchronized void releaseConnection(Connection connection) throws SQLException {
		if(connection != null) freeDbConnections.add(connection);
	}
}

