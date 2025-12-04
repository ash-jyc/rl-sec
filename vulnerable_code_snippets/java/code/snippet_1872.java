import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("maliciousCode");
            oos.flush();
            byte[] data = bos.toByteArray();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(data));
            String command = (String) ois.readObject();
            Runtime.getRuntime().exec(command);
        } catch (Exception e) {
            e.printStackTrace();Bs
        }
    }
}