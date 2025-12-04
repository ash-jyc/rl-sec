public class Program
{
    public static void Main()
    {
        // This object is not initialized
        Object myObject;

        // This method call will throw a NullReferenceException
        myObject.ToString();
    }
}