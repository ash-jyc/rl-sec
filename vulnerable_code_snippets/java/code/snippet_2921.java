import java.io.*;
import java.net.*;

class DangerousCode {
    public static void main(String[] args) throws Exception {
        URL url = new URL("http://example.com/");
        BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
        String inputLine;
        while ((inputLine = reader.readLine()) != null) {
            System.out.println(inputLine);
        }
        reader.close();
    }
}