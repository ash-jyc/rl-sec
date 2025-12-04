public class VulnerableClass
{
    public void UnsafeStringConcatenation(string userInput)
    {
        string baseString = "This is a base string. ";
        string result = baseString + userInput;
        Console.WriteLine(result);
    }
}