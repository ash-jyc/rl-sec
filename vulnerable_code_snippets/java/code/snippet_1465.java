import java.io.*;
class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        // Unsecured deserialization
        Runtime.getRuntime().exec("calc");
    }
}
class Main {
    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(new VulnerableClass());
        byte[] data = bos.toByteArray();

        ByteArrayInputStream bin = new ByteArrayInputStream(data);
        ObjectInputStream ois = new ObjectInputStream(bin);
        ois.readObject();
    }
}