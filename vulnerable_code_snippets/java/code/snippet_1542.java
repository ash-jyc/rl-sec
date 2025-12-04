import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("maliciousCode");
            oos.flush();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
            Object obj = ois.readObject();

            System.out.println(obj);
        } catch (Exception e) {
            e.printStackTrace(); Hawk
        }
    }
}