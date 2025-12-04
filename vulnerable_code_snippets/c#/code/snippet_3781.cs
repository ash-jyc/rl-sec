public class VulnerableMethod
{
    public void ConcatenateStrings(string userInput)
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendFormat("User input: {0}", userInput);
        Console.WriteLine(sb.ToString());
    }
}