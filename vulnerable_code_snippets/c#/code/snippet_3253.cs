class Program
{
    static void Main(string[] args)
    {
        string input = Console.ReadLine();
        char[] buffer = new char[10];
        for (int i = 0; i <= input.Length; i++)
        {
            buffer[i] = input[i];
        }
        Console.WriteLine(buffer);
    }
}