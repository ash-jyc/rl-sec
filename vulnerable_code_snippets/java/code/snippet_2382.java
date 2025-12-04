import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            FileReader file = new FileReader("file.txt");
            BufferedReader fileInput = new BufferedReader(file);
            
            for (int counter = 0; counter < 3; counter++) {
                System.out.println(fileInput.readLine());
            }
            
            fileInput.close();
        } catch (IOException e) {
            e.printStackTrace();Bs
        } finally {
            try {
                FileReader file = new FileReader("file.txt");
                BufferedReader fileInput = new BufferedReader(file);
                
                for (int counter = 0; counter < 3; counter++) {
                    System.out.println(fileInput.readLine());
                }
                
                fileInput.close();
            } catch (IOException e) {
                // Do nothing.
            }
        }
    }
}