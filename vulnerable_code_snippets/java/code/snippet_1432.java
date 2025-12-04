import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        Runtime.getRuntime().exec("calc");
    }
    
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject(new VulnerableClass());
            byte[] data = bos.toByteArray();
            
            ByteArrayInputStream bin = new ByteArrayInputStream(data);
            ObjectInputStream ois = new ObjectInputStream(bin);
            ois.readObject();
        } catch (Exception e) {
            e.printStackTrace();avant;
        }
    }
}