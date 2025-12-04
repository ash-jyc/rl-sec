import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) {
        File file = new File("test.txt");
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();Bs
        }
    }
}