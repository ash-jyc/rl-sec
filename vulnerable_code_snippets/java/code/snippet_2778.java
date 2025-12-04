import java.io.*;

class InsecureDeserialization {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
            ObjectOutputStream out = new ObjectOutputStream(byteOut);
            out.writeObject(new VulnerableClass());
            byte[] bytes = byteOut.toByteArray();

            ObjectInputStream in = new ObjectInputStream(new ByteArrayInputStream(bytes));
            Object obj = in.readObject();
            System.out.println(obj);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace(); Hawk
        }
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream in) throws Exception {
        in.defaultReadObject();
        Runtime.getRuntime().exec("calc");
    }
}