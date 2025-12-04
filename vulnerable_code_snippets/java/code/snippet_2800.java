import java.io.*;
import java.net.*;

class Server {
    public static void main(String[] args) throws IOException {
        ServerSocket serverSocket = new ServerSocket(8080);
        System.out.println("Server is listening on port 8080");

        while(true) {
            Socket socket = serverSocket.accept();
            System.out.println("New client connected");

            new Thread(() -> {
                try {
                    BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    PrintWriter output = new PrintWriter(socket.getOutputStream(), true);

                    String line;
                    while ((line = input.readLine()) != null) {
                        System.out.printf("Received message from client: %s%n", line);
                        output.println(line);
                    }
                } catch (IOException e) {
                    // No error handling here, which can lead to DoS attack
                }
            }).start();
        }
    }
}