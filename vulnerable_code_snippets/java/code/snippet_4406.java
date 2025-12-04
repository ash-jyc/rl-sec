import java.net.*;
import java.io.*;

class VulnerableServer {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(8000);
        System.out.println("Server is listening on port 8000");

        while(true) {
            Socket socket = serverSocket.accept();
            System.out.println("New client connected");

            new Thread(() -> {
                try {
                    BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    PrintWriter out = new PrintWriter(socket.getOutputStream(), true);

                    String inputLine;
                    while ((inputLine = in.readLine()) != null) {
                        System.out.println("Received: " + inputLine);
                        out.println(inputLine);
                    }
                } catch (IOException e) {
                    // No handling of the exception here
                }
            }).start();
        }
    }
}