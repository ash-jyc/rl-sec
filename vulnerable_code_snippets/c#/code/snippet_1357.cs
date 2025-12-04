class Program
{
    static void Main(string[] args)
    {
        StringBuilder sb = new StringBuilder();
        string str = "This is a long string that will cause a buffer overflow if not checked properly.";
        sb.Append(str);
        Console.WriteLine(sb.ToString());
    }
}