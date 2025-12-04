import java.io.*;

class Main {
    public static void main(String[] args) throws Exception {
        File file = new File("input.txt");
        BufferedReader br = new BufferedReader(new FileReader(file));
        
        String st;
        while ((st = br.readLine()) != null) {
            char[] buffer = new char[1024];
            st.getChars(0, st.length(), buffer, 0);
            System.out.println(buffer);
        }
    }
}