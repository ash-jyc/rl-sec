import java.io.*;

class VulnerableCode {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter something: ");
        String userInput = reader.readLine();
        Runtime.getRuntime().exec(userInput);
    }
}