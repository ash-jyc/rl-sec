import java.io.*;
class VulnerableClass implements Serializable {
    private void readObject(java.io.ObjectInputStream stream) throws Exception {
        //deserialize and perform a harmful action
        Runtime.getRuntime().exec("calc");
    }
}
class Main {
    public static void main(String[] args) throws Exception {
        VulnerableClass object = new VulnerableClass();
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject(object);
        byte[] bytes = bos.toByteArray();
        ByteArrayInputStream bin = new ByteArrayInputStream(bytes);
        ObjectInputStream ois = new ObjectInputStream(bin);
        ois.readObject();
    }
}