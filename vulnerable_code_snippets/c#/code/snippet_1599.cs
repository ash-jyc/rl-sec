class Program
{
    static void Main(string[] args)
    {
        try
        {
            // Assume we are getting user input from a form
            string userInput = Console.ReadLine();

            // Assume we are storing this user input into a variable
            string sensitiveInfo = userInput;

            // Assume we are doing some computation here
            // But let's assume an exception might occur here
            int result = 10 / int.Parse(userInput);

            // Assume we are displaying the result
            Console.WriteLine("Result: " + result);
        }
        catch (Exception ex)
        {
            // Assume we are just logging the exception here
            // This is where the vulnerability lies
            // We are exposing sensitive information to the user
            Console.WriteLine("An error occurred: " + ex.Message);
        }
    }
}