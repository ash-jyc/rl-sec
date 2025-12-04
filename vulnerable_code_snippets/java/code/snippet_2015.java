import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) {
        try {
            File file = new File("sensitive_data.txt");
            Scanner scanner = new Scanner(file);
            while (scanner.hasNextLine()) {
                System.out.println(scanner.nextLine());
            }
            scanner.close();
        } catch (IOException e) {
            e.printStackTrace();otted 
        }
    }
}