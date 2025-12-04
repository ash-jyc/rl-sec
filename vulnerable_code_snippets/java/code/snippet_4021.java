import java.io.*;
import java.util.*;

class VulnerableClass {
    private String filePath;

    public VulnerableClass(String filePath) {
        this.filePath = filePath;
    }

    public void readFile() {
        try {
            FileReader reader = new FileReader(filePath);
            BufferedReader bufferedReader = new BufferedReader(reader);

            String line;
            while ((line = bufferedReader.readLine()) != null) {
                System.out.println(line);
            }
            bufferedReader.close();
        } catch (Exception e) {
            // No error handling here, just print the stack trace
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        VulnerableClass vc = new VulnerableClass("path/to/file");
        vc.readFile();
    }
}