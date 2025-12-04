import java.sql.*;

class Main {
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        try {
            // register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // open a connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb", "username", "password");

            // execute a query
            stmt = conn.createStatement();
            String sql = "SELECT id, first, last, age FROM Employees";
            ResultSet rs = stmt.executeQuery(sql);

            // extract data from result set
            while(rs.next()) {
                int id  = rs.getInt("id");
                String first = rs.getString("first");
                String last = rs.getString("last");
                int age = rs.getInt("age");

                System.out.println("ID: " + id);
                System.out.println("First: " + first);
                System.out.println("Last: " + last);
                System.out.println("Age: " + age);
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            se.printStackTrace();妆
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            } // nothing we can do
        }
    }
}