public class UnsafeStringHandler
{
    private char[] buffer = new char[10];

    public void AddToBuffer(string input)
    {
        if (input.Length > buffer.Length)
        {
            throw new ArgumentException("Input is too long.");
        }

        for (int i = 0; i < input.Length; i++)
        {
            buffer[i] = input[i];
        }
    }
}