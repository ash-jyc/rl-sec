public class VulnerableClass
{
    private char[] buffer = new char[10];

    public void UnsafeMethod(string userInput)
    {
        if (userInput.Length > buffer.Length)
        {
            for (int i = 0; i < userInput.Length; i++)
            {
                buffer[i] = userInput[i];
            }
        }
    }
}