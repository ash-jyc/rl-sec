import java.io.*;

class Main {
    public static void main(String[] args) throws Exception {
        byte[] data = new byte[1024];
        int bytesRead;
        try {
            InputStream is = new FileInputStream("file.txt");
            while ((bytesRead = is.read(data)) != -1) {
                System.out.write(data, 0, bytesRead);
            }
        } catch (IOException e) {
            e.printStackTrace();overed
        }
    }
}