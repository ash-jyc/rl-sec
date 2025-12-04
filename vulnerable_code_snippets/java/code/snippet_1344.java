import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            readFile();
        } catch (IOException e) {
            System.out.println("Error reading file: " + e.getMessage());
        }
    }

    public static void readFile() throws IOException {
        FileReader reader = new FileReader("nonexistent_file.txt");
        int data = reader.read();
        if (data != -1) {
            System.out.print((char) data);
        }
        reader.close();
    }
}