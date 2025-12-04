import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter your name: ");
        String userInput = reader.readLine();
        String command = "echo " + userInput;
        Runtime.getRuntime().exec(command);
    }
}