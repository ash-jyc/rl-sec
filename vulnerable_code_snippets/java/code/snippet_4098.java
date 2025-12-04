import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        String str = "Hello, World!";
        byte[] bytes = str.getBytes();
        
        FileOutputStream fos = new FileOutputStream("bytes.txt");
        fos.write(bytes);
        fos.close();
    }
}