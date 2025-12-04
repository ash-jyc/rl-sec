import java.io.*;

class Main {
    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
        ObjectOutputStream objOut = new ObjectOutputStream(byteOut);
        objOut.writeObject(new VulnerableClass());
        byte[] bytes = byteOut.toByteArray();

        ByteArrayInputStream byteIn = new ByteArrayInputStream(bytes);
        ObjectInputStream objIn = new ObjectInputStream(byteIn);
        Object obj = objIn.readObject();
        System.out.println(obj);
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream in) throws Exception {
        Runtime.getRuntime().exec("calc");
    }
}