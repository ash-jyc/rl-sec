public class Program
{
    public static void Main()
    {
        object obj = "123";
        DoSomething(obj);
    }

    private static void DoSomething(object obj)
    {
        int i = (int)obj; // Unchecked cast here, but no check is performed
    }
}