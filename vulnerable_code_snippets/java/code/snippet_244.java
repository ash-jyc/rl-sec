import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject("Hello World");
            byte[] bytes = baos.toByteArray();
            
            ByteArrayInputStream bais = new ByteArrayInputStream(bytes);
            ObjectInputStream ois = new ObjectInputStream(bais);
            System.out.println(ois.readObject());
        } catch (Exception e) {
            e.printStackTrace();妆
        }
    }
}