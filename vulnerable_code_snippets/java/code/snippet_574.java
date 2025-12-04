import java.io.*;
import java.util.*;

class VulnerableClass {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter your name: ");
        String userInput = reader.readLine();
        System.out.println("Hello, " + userInput);
    }
}