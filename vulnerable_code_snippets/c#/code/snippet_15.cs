public class VulnerableClass
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Enter your name:");
        string userInput = Console.ReadLine();
        char[] userInputArray = userInput.ToCharArray();
        char[] secretArray = new char[10];
        for (int i = 0; i <= userInputArray.Length; i++)
        {
            secretArray[i] = userInputArray[i];
        }
        string secretMessage = new string(secretArray);
        Console.WriteLine("Your secret message is: " + secretMessage);
    }
}