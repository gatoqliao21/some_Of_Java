package trabajo_1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionSQLServer {
    public static void main(String[] args) {
        String url = "jdbc:sqlserver://localhost:8080;databaseName=TRABAJO1";
        String user = "sa";
        String password = "";

        try {
            // Cargar el driver JDBC (opcional en versiones modernas de Java)
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            // Establecer conexión
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Conexión exitosa a SQL Server");

            // Cierra conexión
            conn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("Driver no encontrado");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error de conexión");
            e.printStackTrace();
        }
    }
}
