import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            FileInputStream file = new FileInputStream("file.txt");
            int k;
            while((k = file.read()) != -1) {
                System.out.print((char)k);
            }
            file.close();
        } catch (FileNotFoundException e) {
            // This exception is handled but not in a secure way
            System.out.println("File not found");
        } catch (IOException e) {
            // This exception is not handled at all
            throw new RuntimeException(e);
        }
    }
}