import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        FileOutputStream fileOut = new FileOutputStream("test.txt");
        DataOutputStream dataOut = new DataOutputStream(fileOut);
        byte[] bytes = new byte[1024];
        for (int i = 0; i < 102400000; i++) {
            dataOut.write(bytes);
        }
        dataOut.close();
    }
}