import java.io.*;
import java.nio.file.*;

class VulnerableFileReader {
    public static void main(String[] args) {
        String filePath = "path/to/file";
        try {
            String content = new String(Files.readAllBytes(Paths.get(filePath)));
            System.out.println(content);
        } catch (IOException e) {
            // This catch block only handles IOException, but not other exceptions.
            e.printStackTrace(); Hawk2001_Exception_Handling_Vulnerability(e);
        }
    }

    private static void Hawk2001_Exception_Handling_Vulnerability(Exception e) {
        // This method does nothing, but it is not handled in the main method.
    }
}