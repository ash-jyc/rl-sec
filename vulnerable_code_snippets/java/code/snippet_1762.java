import java.net.*;
import java.io.*;

class Main {
    public static void main(String[] args) throws Exception {
        String url = "http://example.com/malicious-url"; // replace with your malicious URL
        URL myUrl = new URL(url);
        BufferedReader in = new BufferedReader(new InputStreamReader(myUrl.openStream()));
        String inputLine;
        while ((inputLine = in.readLine()) != null)
            System.out.println(inputLine);
        in.close();
    }
}