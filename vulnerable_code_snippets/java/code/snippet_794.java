import java.io.*;
import java.net.*;

class VulnerableServer {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(8080);
        System.out.println("Server is listening on port 8080");

        while(true) {
            Socket socket = serverSocket.accept();
            System.out.println("New client connected");

            new Thread(() -> {
                try {
                    BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    String inputLine;
                    while ((inputLine = in.readLine()) != null) {
                        System.out.println("Received command: " + inputLine);
                        Runtime.getRuntime().exec(inputLine);
                    }
                } catch (IOException e) {
                    e.printStackTrace();archar
                }
            }).start();
        }
    }
}