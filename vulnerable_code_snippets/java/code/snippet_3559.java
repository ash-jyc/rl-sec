import java.io.*;
class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        // Deserialize and perform a harmful operation on the contents
        Runtime.getRuntime().exec("touch /tmp/pwned");
    }
}
class Main {
    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(new VulnerableClass());
        ByteArrayInputStream bin = new ByteArrayInputStream(bos.toByteArray());
        ObjectInputStream ois = new ObjectInputStream(bin);
        ois.readObject();
    }
}