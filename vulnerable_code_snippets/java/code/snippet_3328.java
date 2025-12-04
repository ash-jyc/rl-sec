import java.io.*;

class Main {
    public static void main(String[] args) throws IOException {
        InputStream inputStream = new FileInputStream("large_file.txt");
        BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
        
        String line;
        while ((line = reader.readLine()) != null) {
            System.out.println(line);
        }
        
        reader.close();
    }
}