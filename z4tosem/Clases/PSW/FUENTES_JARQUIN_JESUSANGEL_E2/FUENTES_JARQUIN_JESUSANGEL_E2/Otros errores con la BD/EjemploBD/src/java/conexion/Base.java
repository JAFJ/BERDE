/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Alumno
 */
public class Base {
        private String usrBD;
    private String passBD;
    private String urlBD;
    private String driverClassName;
    private Connection conn = null;
    private Statement estancia;
    
    
    public Base(){
        this.usrBD="root";
        this.passBD="n0m3l0";
        this.urlBD="jdbc.mysql://localhost:3306/ejemplo";
        this.driverClassName="com.mysql.jdbc.Driver";
        
    }

    /**
     * @return the usrBD
     */
    public String getUsrBD() {
        return usrBD;
    }

    /**
     * @param usrBD the usrBD to set
     */
    public void setUsrBD(String usrBD) {
        this.usrBD = usrBD;
    }

    /**
     * @return the passBD
     */
    public String getPassBD() {
        return passBD;
    }

    /**
     * @param passBD the passBD to set
     */
    public void setPassBD(String passBD) {
        this.passBD = passBD;
    }

    /**
     * @return the urlBD
     */
    public String getUrlBD() {
        return urlBD;
    }

    /**
     * @param urlBD the urlBD to set
     */
    public void setUrlBD(String urlBD) {
        this.urlBD = urlBD;
    }

    /**
     * @return the driverClassName
     */
    public String getDriverClassName() {
        return driverClassName;
    }

    /**
     * @param driverClassName the driverClassName to set
     */
    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    /**
     * @param conn the conn to set
     */
    public void setConn(Connection conn) {
        this.conn = conn;
    }
    
    
    public void conectar () throws SQLException{
        try{
            Class.forName(this.driverClassName).newInstance();
            this.conn = DriverManager.getConnection(this.urlBD, this.usrBD, this.passBD);
        }
        catch(Exception err){
            System.out.println("Error "+ err.getMessage());
        }
    }

    //cerrar conexion de BD
    public void cierraConexion() throws SQLException {
        this.conn.close();
    }
    
    //metodo para ejecutar sentenic insert de SQL (insertar datos)
    public int insertar(String inserta) throws SQLException {
        Statement st = (Statement) this.conn.createStatement();
        return st.executeUpdate (inserta);
    }
    
     /**
     * @return the estancia
     */
    public Statement getEstancia() {
        return estancia;
    }

    /**
     * @param estancia the estancia to set
     */
    public void setEstancia(Statement estancia) {
        this.estancia = estancia;
    }
}

