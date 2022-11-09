import java.sql.Connection;
import java.sql.DriverManager;

public class connect {
    public static void main(String[] args){
        connect();
    }
    public static void connect(){
        Connection conn=null;
        try{
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/prueba1?useUnicode=true&useJDBCCompilantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","NYPAmlg25");
            if(conn!=null){
                System.out.println("Conexion realizada con exito");
            }
        }catch(Exception e){
            System.out.println("Ha ocurrido un error, "+e.getMessage());
        }
    }
    
    
}
