public class VulnerableClass
{
    private int[] dataArray;

    public VulnerableClass(int size)
    {
        dataArray = new int[size];
    }

    public void SetData(int index, int value)
    {
        dataArray[index] = value;  // Vulnerable line
    }

    public int GetData(int index)
    {
        return dataArray[index];  // Vulnerable line
    }
}