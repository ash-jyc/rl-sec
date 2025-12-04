public class Program
{
    public static void Main()
    {
        Student student = null;
        Console.WriteLine(student.Name); // This will throw a NullReferenceException
    }
}

public class Student
{
    public string Name { get; set; }
}