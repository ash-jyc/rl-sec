public class VulnerableClass
{
    private object _field;

    public void SetField(object value)
    {
        _field = value;
    }

    public string GetFieldAsString()
    {
        return _field.ToString();
    }
}

public class Program
{
    static void Main(string[] args)
    {
        var instance = new VulnerableClass();
        instance.SetField(123);
        Console.WriteLine(instance.GetFieldAsString());
    }
}