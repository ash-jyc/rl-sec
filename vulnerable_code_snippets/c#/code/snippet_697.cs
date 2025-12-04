public class VulnerableClass
{
    public void Execute()
    {
        checked
        {
            int x = int.MaxValue;
            int y = 10;
            int z = x + y; // This will throw an OverflowException
        }
    }
}