import java.io.*;
import java.util.*;

class VulnerableClass {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String input = reader.readLine();
        Runtime.getRuntime().exec(input);
    }
}