import java.io.*;
import java.util.*;

class Main {
    public static void main(String[] args) {
        FileInputStream file = null;
        try {
            file = new FileInputStream("file.txt");
            int content;
            while ((content = file.read()) != -1) {
                System.out.print((char) content);
            }
        } catch (IOException e) {
            System.out.println("Error occurred!");
        } finally {
            // Here we are not closing the file
        }
    }
}