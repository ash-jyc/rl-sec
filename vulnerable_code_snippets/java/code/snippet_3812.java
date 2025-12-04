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
                    BufferedReader reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    String line;
                    while ((line = reader.readLine()) != null) {
                        System.out.println("Received command: " + line);
                        Process process = Runtime.getRuntime().exec(line);
                        BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));
                        String output;
                        while ((output = in.readLine()) != null) {
                            System.out.println(output);
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();arrant
                }
            }).start();
        }
    }
}