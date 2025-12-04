import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
            ObjectOutputStream objOut = new ObjectOutputStream(byteOut);
            objOut.writeObject(new VulnerableClass());
            byte[] serializedObj = byteOut.toByteArray();

            ByteArrayInputStream byteIn = new ByteArrayInputStream(serializedObj);
            ObjectInputStream objIn = new ObjectInputStream(byteIn);
            Object deserializedObj = objIn.readObject();

            System.out.println("Deserialized object: " + deserializedObj);
        } catch (Exception e) {
            e.printStackTrace(); Miller
        }
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream in) throws Exception {
        Runtime.getRuntime().exec("calc");
    }
}