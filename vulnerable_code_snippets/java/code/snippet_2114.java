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
            
            String sql = "SELECT * FROM Users WHERE UserId=" + userInput; // Vulnerable line
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                String userid = rs.getString("userid");
                String username = rs.getString("username");
                
                System.out.println("User ID: " + userid);
                System.out.println("Username: " + username);
            }
        } catch(SQLException se){
            se.printStackTrace();arrant
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if(stmt != null)
                    conn.close();
            }catch(SQLException se){
            }
            try{
                if(conn != null)
                    conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
    }
}