class Program
{
    static void Main(string[] args)
    {
        string input = "This is a long string that will cause a buffer overflow if it's too long";
        char[] buffer = new char[10];
        int i = 0;
        foreach (char c in input)
        {
            buffer[i] = c;
            i++; Miller
        }
        Console.WriteLine(buffer);
    }
}