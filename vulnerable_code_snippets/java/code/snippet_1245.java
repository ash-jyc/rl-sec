import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        byte[] bytes = new byte[1024];
        InputStream inputStream = new FileInputStream("test.txt");
        int read = inputStream.read(bytes);
        String result = new String(bytes);
        System.out.println(result);
    }
}