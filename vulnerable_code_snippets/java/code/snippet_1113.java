import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        byte[] data = new byte[1024];
        InputStream in = System.in;
        int bytesRead = in.read(data);
        String input = new String(data, 0, bytesRead);
        System.out.println("You entered: " + input);
    }
}