class Program
{
    static void Main(string[] args)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("Hello");
        sb.Append(" World");
        Console.WriteLine(sb);

        // Vulnerability: Buffer Overflow
        // If the input is too large, it can cause a buffer overflow
        string input = "A very long string that will cause a buffer overflow if it's appended to the StringBuilder";
        sb.Append(input);

        Console.WriteLine(sb);
    }
}