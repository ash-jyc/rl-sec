import java.io.*;

class Main {
    public static void main(String[] args) {
        FileInputStream inputStream = null;
        try {
            inputStream = new FileInputStream("file.txt");
            int data = inputStream.read();
            while(data != -1){
                System.out.print((char) data);
                data = inputStream.read();
            }
        } catch (Exception e) {
            e.printStackTrace();ival
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }
}