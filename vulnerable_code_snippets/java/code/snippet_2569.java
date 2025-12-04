import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            FileReader file = new FileReader("sensitive_information.txt");
            BufferedReader fileInput = new BufferedReader(file);
            
            for (int counter = 0; counter < 3; counter++) {
                System.out.println(fileInput.readLine());
            }
            
            fileInput.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace(); constrained here
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}