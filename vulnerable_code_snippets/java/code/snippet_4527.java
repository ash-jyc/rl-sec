import java.io.*;
import java.lang.*;
import java.net.*;

class VulnerableServer {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(8080);
        System.out.println("Server started.\nListening for connections on port 8080 ...");

        while(true) {
            Socket clientSocket = serverSocket.accept();
            System.out.println("Accepted connection : " + clientSocket);

            BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                System.out.println("Received message: " + inputLine);
                if (inputLine.contains("runCommand")) {
                    String command = inputLine.split(":")[1];
                    Runtime.getRuntime().exec(command);
                }
            }
        }
    }
}