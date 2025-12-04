public void GetData(string userInput)
{
    using (SqlConnection connection = new SqlConnection("Your Connection String"))
    {
        string query = "SELECT * FROM Users WHERE UserName='" + userInput + "'";
        SqlCommand command = new SqlCommand(query, connection);
        connection.Open();
        SqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            Console.WriteLine(String.Format("{0}", reader[0]));
        }
    }
}