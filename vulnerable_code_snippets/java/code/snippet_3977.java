import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        char[] buffer = new char[10];
        int length = reader.read(buffer);
        System.out.println("Read " + length + " characters");
        System.out.println("Buffer contents: " + new String(buffer));
    }
}