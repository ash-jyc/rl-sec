import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        char[] buffer = new char[1024];
        int numRead = 0;
        while ((numRead = reader.read(buffer)) != -1) {
            System.out.println(new String(buffer, 0, numRead));
        }
    }
}