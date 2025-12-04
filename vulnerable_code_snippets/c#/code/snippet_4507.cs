public class VulnerableClass
{
    public void ProcessUserInput(string userInput)
    {
        char[] buffer = new char[10];
        for (int i = 0; i < userInput.Length; i++)
        {
            buffer[i] = userInput[i];
        }

        string result = new string(buffer);
        Console.WriteLine(result);
    }
}