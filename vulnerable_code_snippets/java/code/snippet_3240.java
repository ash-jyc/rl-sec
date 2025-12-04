import java.io.*;
import java.net.*;

class VulnerableServer {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(8080);
        System.out.println("Server listening on port 8080");

        while(true) {
            Socket clientSocket = serverSocket.accept();
            BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);

            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                try {
                    Runtime.getRuntime().exec(inputLine);
                } catch (IOException e) {
                    // Handle exception
                }
            }
        }
    }
}