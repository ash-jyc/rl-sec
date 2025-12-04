import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        stream.defaultReadObject();
        Runtime.getRuntime().exec("calc");
    }

    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject(new VulnerableClass());
            oos.flush();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
            ois.readObject();

            oos.close();
            ois.close();
        } catch (Exception ex) {
            System.out.println("Exception occurred.");
        }
    }
}