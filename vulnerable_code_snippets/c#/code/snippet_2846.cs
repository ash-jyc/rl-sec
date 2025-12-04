public class VulnerableClass
{
    public void UnsafeMethod(string userInput)
    {
        char[] buffer = new char[10];
        for (int i = 0; i <= userInput.Length; i++)
        {
            buffer[i] = userInput[i];
        }

        string output = new string(buffer);
        Console.WriteLine(output);
    }
}