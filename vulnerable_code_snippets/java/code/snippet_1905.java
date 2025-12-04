import java.io.*;
import java.util.*;

class UnsafeUserInput {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter your command:");
        String command = reader.readLine();
        Runtime.getRuntime().exec(command);
    }
}