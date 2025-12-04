import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("maliciousCode");
            oos.flush();
            
            ByteArrayInputStream bin = new ByteArrayInputStream(bos.toByteArray());
            ObjectInputStream ois = new ObjectInputStream(bin);
            String object = (String) ois.readObject();
            
            System.out.println(object);
        } catch (Exception e) {
            e.printStackTrace();avant
        }
    }
}