import java.io.*;
import java.util.*;

class VulnerableCode {
    static void readFile(String fileName) {
        try {
            FileReader fr = new FileReader(fileName);
            BufferedReader br = new BufferedReader(fr);
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
            br.close();
        } catch (Exception e) {
            // This catches all exceptions but does nothing about them.
        }
    }

    public static void main(String[] args) {
        String fileName = "sensitive_data.txt";
        readFile(fileName);
    }
}