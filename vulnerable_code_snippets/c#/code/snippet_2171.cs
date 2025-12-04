using System;
using System.Collections.Generic;

public class MyClass
{
    private List<MyResource> resources = new List<MyResource>();

    public void UseResource(MyResource resource)
    {
        if (resource != null)
        {
            resources.Add(resource);
        }
    }
}

public class MyResource : IDisposable
{
    public void Dispose()
    {
        // Cleanup code here...
    }
}