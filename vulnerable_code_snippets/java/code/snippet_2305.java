import java.sql.*;

class VulnerableClass {
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    private static final String DB_URL = "jdbc:mysql://localhost/test";
    
    private static final String USER = "root";
    private static final String PASS = "password";
    
    public void getData(String userInput) throws SQLException {
        Connection conn = null;
        Statement stmt = null;
        
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            
            stmt = conn.createStatement();
            String sqlQuery = "SELECT * FROM users WHERE username='" + userInput + "'";
            ResultSet rs = stmt.executeQuery(sqlQuery);
            
            while(rs.next()){
                String username = rs.getString("username");
                String password = rs.getString("password");
                
                System.out.println("username: " + username);
                System.out.println("password: " + password);
            }
            rs.close();
        } catch(SQLException se){
            se.printStackTrace();
        } catch(Exception e){
            e.printStackTrace();
        } finally{
            try{
                if(stmt != null)
                    stmt.close();
            } catch(SQLException se2){
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