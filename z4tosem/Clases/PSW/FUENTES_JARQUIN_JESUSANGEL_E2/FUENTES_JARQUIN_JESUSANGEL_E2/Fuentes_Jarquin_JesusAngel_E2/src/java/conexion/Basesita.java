/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Basesita {
    private String userBD;
    private String passBD;
    private String urlBD;
    private String driverClassName;
    private Connection conn = null;
    private Statement estancia;
    
    public Basesita(){
        this.userBD = "root";
        this.passBD = "n0m3l0";
        this.urlBD = "jdbc:mysql://localhost:3306/ejemplo?useUnicode=true&useJDBCCompilantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        this.driverClassName = "com.mysql.jdbc.Driver";
    }

    public String getUserBD() {
        return userBD;
    }

    public void setUserBD(String userBD) {
        this.userBD = userBD;
    }

    public String getPassBD() {
        return passBD;
    }

    public void setPassBD(String passBD) {
        this.passBD = passBD;
    }

    public String getUrlBD() {
        return urlBD;
    }

    public void setUrlBD(String urlBD) {
        this.urlBD = urlBD;
    }

    public String getDriverClassName() {
        return driverClassName;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public Statement getEstancia() {
        return estancia;
    }

    public void setEstancia(Statement estancia) {
        this.estancia = estancia;
    }
   //Conexion a la BD
    public void conectar() throws SQLException {
        try {
            Class.forName(this.driverClassName).newInstance();
            this.conn = DriverManager.getConnection(this.urlBD, this.userBD, this.passBD);
 
        } catch (Exception err) {
            System.out.println("Error " + err.getMessage());
        }
    }
    
    //Cerrar la conexion de BD
    public void cierraConexion() throws SQLException {
        this.conn.close();
    }
    
    //Metodos para ejecutar sentencias SQL    
    public int insertar(String inserta) throws SQLException {
        Statement st = (Statement) this.conn.createStatement();
        return st.executeUpdate(inserta);
    }
    

}
