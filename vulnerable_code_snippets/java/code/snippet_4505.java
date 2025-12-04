import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        System.out.println("Deserializing...");
        stream.defaultReadObject();
        Runtime.getRuntime().exec("touch /tmp/pwned");
    }

    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(new VulnerableClass());
        ByteArrayInputStream bin = new ByteArrayInputStream(bos.toByteArray());
        ObjectInputStream ois = new ObjectInputStream(bin);
        ois.readObject();
    }
}