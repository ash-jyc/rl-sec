public class Program
{
    public static void Main()
    {
        int x = int.MaxValue;
        // unchecked block
        unchecked
        {
            int y = x + 1;
            Console.WriteLine(y);
        }
    }
}