import java.io.*;

class VulnerableClass implements Serializable {
    private String command;

    public VulnerableClass(String command) {
        this.command = command;
    }

    private void readObject(ObjectInputStream stream) throws Exception {
        stream.defaultReadObject();
        Runtime.getRuntime().exec(command);
    }

    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        VulnerableClass payload = new VulnerableClass("calc");
        oos.writeObject(payload);
        oos.close();

        ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
        ois.readObject();
    }
}