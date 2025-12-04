import java.sql.*;

class Main {
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // open a connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb", "username", "password");

            // execute a query
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM table");

            // extract data from result set
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");

                // print data
                System.out.print("ID: " + id);
                System.out.print(", Name: " + name);
            }
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();archar
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}