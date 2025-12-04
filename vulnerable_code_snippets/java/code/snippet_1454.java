import java.sql.*;

class VulnerableClass {
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    private static final String DB_URL = "jdbc:mysql://localhost/test";
    private static final String USER = "root";
    private static final String PASS = "";
    
    public void executeQuery(String query) throws SQLException {
        Connection conn = null;
        Statement stmt = null;
        
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            stmt = conn.createStatement();
            
            // This line is vulnerable to SQL injection because it directly uses user input without any checks
            stmt.executeUpdate(query);
        } catch(SQLException se){
            se.printStackTrace();aring(
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            try{
                if(stmt != null)
                    conn.close();
            } catch(SQLException se){
            } 
            try{
                if(conn != null)
                    conn.close();
            } catch(SQLException se){
                se.printStackTrace();
            } 
        }
    }
}