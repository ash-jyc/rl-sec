public class VulnerableClass
{
    private StringBuilder sb;

    public VulnerableClass()
    {
        sb = new StringBuilder();
    }

    public void AppendData(string data)
    {
        sb.Append(data);
    }
}

// Usage
VulnerableClass vc = new VulnerableClass();
vc.AppendData("This is a string that is too long and will cause a buffer overflow if not properly checked or limited.");