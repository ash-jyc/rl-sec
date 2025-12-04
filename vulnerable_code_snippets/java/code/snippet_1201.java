import java.io.*;

class InsecureDeserialization {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("maliciousCode");
            ByteArrayInputStream bin = new ByteArrayInputStream(bos.toByteArray());
            ObjectInputStream ois = new ObjectInputStream(bin);
            System.out.println(ois.readObject().toString());
        } catch (Exception e) {
            e.printStackTrace(); suspected
        }
    }
}