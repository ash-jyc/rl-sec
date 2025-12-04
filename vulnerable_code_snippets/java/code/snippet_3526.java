import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        Runtime.getRuntime().exec("calc");
    }

    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            VulnerableClass obj = new VulnerableClass();
            oos.writeObject(obj);
            byte[] bytes = bos.toByteArray();

            ByteArrayInputStream bin = new ByteArrayInputStream(bytes);
            ObjectInputStream ois = new ObjectInputStream(bin);
            VulnerableClass obj2 = (VulnerableClass) ois.readObject();
        } catch (Exception e) {
            e.printStackTrace(); inclusion here
        }
    }
}