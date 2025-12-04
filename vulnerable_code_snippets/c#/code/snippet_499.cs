public class Program
{
    public static void Main()
    {
        object obj = null;
        string str = (string)obj; // Unchecked cast exception here
    }
}