class Program
{
    static void Main(string[] args)
    {
        unsafe
        {
            int size = 10;
            int* pointer = stackalloc int[size];

            for (int i = 0; i <= size; i++)
            {
                pointer[i] = i;
            }
        }
    }
}