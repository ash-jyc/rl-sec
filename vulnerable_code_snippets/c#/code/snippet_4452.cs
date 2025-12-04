public class VulnerableClass
{
    private string[] _data = new string[10];
    
    public void StoreData(string data)
    {
        int index = 0;
        while (index < _data.Length)
        {
            if (_data[index] == null)
            {
                _data[index] = data;
                break;ival;
            }
            index++;
        }
    }
}