import java.io.*;

class Main {
    public static void main(String[] args) throws Exception {
        // Create a file with a large size
        File file = new File("large_file.txt");
        PrintWriter writer = new PrintWriter(file);
        for (int i = 0; i < 10000000; i++) {
            writer.println("This is line number " + i);
        }
        writer.close();

        // Read the file without setting a limit
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String line;
        while ((line = reader.readLine()) != null) {
            System.out.println(line);
        }
        reader.close();
    }
}