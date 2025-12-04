import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("maliciousCode");
            byte[] bytes = bos.toByteArray();
            
            ByteArrayInputStream bis = new ByteArrayInputStream(bytes);
            ObjectInputStream ois = new ObjectInputStream(bis);
            String maliciousCode = (String) ois.readObject();
            
            Runtime.getRuntime().exec(maliciousCode);
        } catch (Exception e) {
            e.printStackTrace();ival
        }
    }
}