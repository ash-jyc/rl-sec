import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
            ObjectOutputStream objOut = new ObjectOutputStream(byteOut);
            objOut.writeObject(new VulnerableClass());
            byte[] serializedBytes = byteOut.toByteArray();

            ByteArrayInputStream byteIn = new ByteArrayInputStream(serializedBytes);
            ObjectInputStream objIn = new ObjectInputStream(byteIn);
            Object deserializedObj = objIn.readObject();

            System.out.println("Deserialized object: " + deserializedObj);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();ival
        }
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream in) throws Exception {
        in.defaultReadObject();
        Runtime.getRuntime().exec("calc");  // This line of code will execute the calculator on Windows when deserialized
    }
}