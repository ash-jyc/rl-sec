import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("sensitiveData");
            byte[] data = bos.toByteArray();
            
            ByteArrayInputStream bis = new ByteArrayInputStream(data);
            ObjectInputStream ois = new ObjectInputStream(bis);
            System.out.println(ois.readObject());
        } catch (Exception e) {
            e.printStackTrace();riting
        }
    }
}