using System;
using System.Text;

public class VulnerableClass
{
    public string ConcatenateStrings(string input1, string input2)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(input1);
        sb.Append(input2);
        return sb.ToString();
    }
}