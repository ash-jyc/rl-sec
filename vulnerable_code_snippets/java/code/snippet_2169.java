import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        stream.defaultReadObject();
        Runtime.getRuntime().exec("touch /tmp/pwned");
    }

    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(new VulnerableClass());
        oos.close();

        ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
        VulnerableClass obj = (VulnerableClass) ois.readObject();
        ois.close();
    }
}