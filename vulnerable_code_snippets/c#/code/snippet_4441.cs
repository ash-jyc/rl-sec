public class Program
{
    public static void Main()
    {
        Employee employee = new Employee();
        Console.WriteLine(employee.Name);
    }
}

public class Employee
{
    public string Name { get; set; }
}