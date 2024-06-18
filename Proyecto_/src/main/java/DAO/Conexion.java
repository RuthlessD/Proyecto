package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private static String bd = "RegistroInt";
    private static String user = "root";
    private static String pass = "D4v1d2003*.";
    private static String url = "jdbc:mysql://localhost:3306/" + bd;
    private Connection cnx;

    public Connection getCnx() {
        return cnx;
    }

    public void setCnx(Connection cnx) {
        this.cnx = cnx;
    }

    public void Conectar() throws Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx = DriverManager.getConnection(url, user, pass);
            if (cnx != null) {
                System.out.println("Conexión establecida correctamente con la base de datos");
            } else {
                throw new Exception("No se pudo conectar a la base de datos");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Error al conectar a la base de datos: " + e.getMessage());
        }
    }

    public void Desconectar() throws Exception {
        try {
            if (cnx != null && !cnx.isClosed()) {
                cnx.close();
                System.out.println("Desconexión exitosa de la base de datos");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Error al desconectar de la base de datos: " + e.getMessage());
        }
    }
}
