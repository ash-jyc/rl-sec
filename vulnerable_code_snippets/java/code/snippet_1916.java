import java.io.*;

class ResourceLeak {
    private static ResourceLeak instance = null;
    private DataOutputStream outputStream;
    private RandomAccessFile raf;

    private ResourceLeak(String fileName) throws IOException {
        raf = new RandomAccessFile(fileName, "rw");
        outputStream = new DataOutputStream(new FileOutputStream(raf.getFD()));
    }

    public static ResourceLeak getInstance(String fileName) throws IOException {
        if (instance == null) {
            instance = new ResourceLeak(fileName);
        }
        return instance;
    }

    protected void finalize() throws IOException {
        // This is where the resource leak occurs.
        // The finalize method is called by the garbage collector when an object is about to be collected.
        // If an exception is thrown here, the exception is ignored and finalization continues.
        // This can leave resources (in this case, the file and the stream) open, leading to resource leaks.
        outputStream.close();
        raf.close();
    }
    
    public static void main(String[] args) throws IOException {
        ResourceLeak rl = ResourceLeak.getInstance("test.txt");
        System.gc();  // Trigger garbage collection
    }
}