public class VulnerableClass
{
    private char[] buffer = new char[10];

    public void AddToBuffer(string input)
    {
        if (input.Length > 10)
        {
            throw new ArgumentException("Input too long");
        }

        for (int i = 0; i < input.Length; i++)
        {
            buffer[i] = input[i];
        }
    }
}