import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            File file = new File("sensitive_data.txt");
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();
        } catch (Exception e) {
            // Exception handling is ignored and no action is taken if an exception occurs.
        }
    }
}