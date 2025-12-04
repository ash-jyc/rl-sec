public class VulnerableClass
{
    public void ConcatenateStrings(string input1, string input2)
    {
        // No input validation here, can lead to buffer overflow
        string result = input1 + input2;

        if (result.Length > 10)
        {
            Console.WriteLine("Result is too long!");
        }
        else
        {
            Console.WriteLine("Result: " + result);
        }
    }
}