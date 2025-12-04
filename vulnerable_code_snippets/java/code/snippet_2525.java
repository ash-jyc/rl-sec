import java.io.*;
class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        // Deserialize and assign the object from the stream.
        stream.defaultReadObject();
        // Do something harmful.
        Runtime.getRuntime().exec("touch /tmp/pwned");
    }
}
class Main {
    public static void main(String[] args) throws Exception {
        // Create an instance of VulnerableClass.
        VulnerableClass object = new VulnerableClass();
        // Serialize the object.
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(object);
        byte[] byteArray = bos.toByteArray();
        // De-serialize the object.
        ByteArrayInputStream bin = new ByteArrayInputStream(byteArray);
        ObjectInputStream ois = new ObjectInputStream(bin);
        ois.readObject();
    }
}