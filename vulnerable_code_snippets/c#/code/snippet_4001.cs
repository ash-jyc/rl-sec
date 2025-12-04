public class MyClass {
    private StringBuilder sb;

    public MyClass() {
        sb = new StringBuilder();
    }

    public void AppendData(string data) {
        sb.Append(data);
    }

    public string GetData() {
        return sb.ToString();
    }
}