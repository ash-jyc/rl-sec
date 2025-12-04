public class VulnerableClass
{
    private char[] buffer = new char[10];

    public void CopyData(string userInput)
    {
        if (userInput.Length > 10)
        {
            throw new ArgumentException("Input too long!");
        }

        for (int i = 0; i < userInput.Length; i++)
        {
            buffer[i] = userInput[i];
        }
    }
}