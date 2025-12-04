import java.io.*;

class InsecureDeserialization {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("test");
            oos.flush();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
            System.out.println(ois.readObject());
        } catch (Exception e) {
            e.printStackTrace(); fulfilling the requirements of the task.
        }
    }
}