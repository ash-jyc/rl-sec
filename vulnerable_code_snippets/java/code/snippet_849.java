import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            File file = new File("C:/sensitiveData.txt");
            BufferedReader br = new BufferedReader(new FileReader(file));
            String st;
            while ((st = br.readLine()) != null)
                System.out.println(st);
        } catch (IOException e) {
            e.printStackTrace();妆
        }
    }
}