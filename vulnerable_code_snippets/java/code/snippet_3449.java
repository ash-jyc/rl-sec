import java.io.*;

class Main {
    public static void main(String[] args) {
        String fileName = "test.txt";
        // Unsanitized user input
        String userInput = "../../../etc/passwd";
        
        try {
            FileInputStream inputStream = new FileInputStream(userInput);
            int data = inputStream.read();
            while(data != -1) {
                System.out.print((char) data);
                data = inputStream.read();
            }
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace(); Hawk
        }
    }
}