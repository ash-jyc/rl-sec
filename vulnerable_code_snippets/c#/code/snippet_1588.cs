public class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Data Source=localhost;Initial Catalog=mydatabase;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        // Some operations...
        conn.Close();
    }
}