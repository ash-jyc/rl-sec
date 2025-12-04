import java.io.*;
import java.util.*;

class VulnerableClass {
    private static final String FILE_NAME = "secret.txt";

    public void readFile() {
        try {
            FileInputStream fis = new FileInputStream(FILE_NAME);
            ObjectInputStream ois = new ObjectInputStream(fis);
            SecretData data = (SecretData) ois.readObject();
            System.out.println("Secret Data: " + data.getData());
            ois.close();
        } catch (Exception e) {
            // Error Handling
        }
    }
}

class SecretData implements Serializable {
    private String data;

    public SecretData(String data) {
        this.data = data;
    }

    public String getData() {
        return data;
    }
}