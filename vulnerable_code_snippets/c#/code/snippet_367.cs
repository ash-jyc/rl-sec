public class ExampleClass
{
    private IDisposable _resource;

    public void OpenResource()
    {
        _resource = new SomeDisposableResource();
    }

    public void UseResource()
    {
        _resource.Use();
    }
}

public class SomeDisposableResource : IDisposable
{
    public void Use()
    {
        // Use the resource here
    }

    public void Dispose()
    {
        // Clean up the resource here
    }
}