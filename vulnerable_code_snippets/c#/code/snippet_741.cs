public class VulnerableClass
{
    public void UnsafeCast(string userInput)
    {
        long num = Convert.ToInt64(userInput); // Vulnerable line
        Console.WriteLine(num);
    }
}