import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        File file = new File("largeFile.txt");
        BufferedReader br = new BufferedReader(new FileReader(file));
        char[] buffer = new char[1024];
        int charsRead = br.read(buffer, 0, buffer.length);
        while(charsRead != -1) {
            System.out.println(buffer);
            charsRead = br.read(buffer, 0, buffer.length);
        }
        br.close();
    }
}