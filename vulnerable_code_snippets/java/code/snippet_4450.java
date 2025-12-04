import java.io.*;

class Main {
    public static void main(String[] args) {
        try (RandomAccessFile raf = new RandomAccessFile("sample.txt", "rw")) {
            raf.writeUTF("Hello, World!");
            throw new RuntimeException("Simulating an exception");
        } catch (IOException e) {
            e.printStackTrace();蜜月
        }
    }
}