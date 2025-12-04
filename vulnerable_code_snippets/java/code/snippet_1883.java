import java.io.*;

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
            e.printStackTrace();archar
        } 
    }
}