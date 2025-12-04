import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        char[] buffer = new char[1024];
        int numRead = reader.read(buffer);
        String input = new String(buffer, 0, numRead);
        System.out.println(input);
    }
}