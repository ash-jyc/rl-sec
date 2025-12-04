import java.io.*;

class UnsafeCode {
    public static void main(String[] args) {
        try {
            File file = new File("C:/path/to/file.txt");
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();
        } catch (Exception e) {
            // No error handling whatsoever.
        }
    }
}