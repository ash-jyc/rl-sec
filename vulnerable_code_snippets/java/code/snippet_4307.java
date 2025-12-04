import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject("test");
            oos.close();
            byte[] serializedData = baos.toByteArray();
            
            ByteArrayInputStream bais = new ByteArrayInputStream(serializedData);
            ObjectInputStream ois = new ObjectInputStream(bais);
            Object obj = ois.readObject();
            System.out.println(obj);
        } catch (Exception e) {
            e.printStackTrace();avant;
        }
    }
}