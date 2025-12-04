public class VulnerableClass
{
    private int[] myArray = new int[10];

    public void SetValue(int index, int value)
    {
        myArray[index] = value; // This line can cause a buffer overflow if index is out of bounds
    }
    
    public int GetValue(int index)
    {
        return myArray[index]; // This line can cause a buffer overflow if index is out of bounds
    }
}