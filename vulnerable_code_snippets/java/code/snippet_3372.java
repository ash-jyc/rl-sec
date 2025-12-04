import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String userInput = reader.readLine();
        byte[] buffer = new byte[10];
        System.arraycopy(userInput.getBytes(), 0, buffer, 0, userInput.length());
        System.out.println("Buffer content: " + new String(buffer));
    }
}