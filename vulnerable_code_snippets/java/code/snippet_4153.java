import java.io.*;

class Example {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String input = reader.readLine();
        char[] buffer = new char[10];
        for (int i = 0; i < input.length(); i++) {
            buffer[i] = input.charAt(i);
        }
        System.out.println(buffer);
    }
}