public class VulnerableClass
{
    public void Add(int a, int b)
    {
        byte sum = (byte)(a + b); // Unchecked conversion from 'int' to 'byte'
        Console.WriteLine("Sum: " + sum);
    }
}