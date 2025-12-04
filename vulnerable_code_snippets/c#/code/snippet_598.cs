public class VulnerableClass
{
    private char[] buffer = new char[10];

    public void WriteToBuffer(string input)
    {
        if (input.Length > 10)
        {
            throw new ArgumentException("Input string too long.");
        }

        for (int i = 0; i < input.Length; i++)
        {
            buffer[i] = input[i];
        }
    }
}