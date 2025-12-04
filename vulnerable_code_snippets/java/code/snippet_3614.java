import java.io.*;

class InsecureDeserialization implements Serializable {
    private static final long serialVersionUID = 1L;
    private String command;

    public InsecureDeserialization(String command) {
        this.command = command;
    }

    private void readObject(ObjectInputStream stream) throws Exception {
        stream.defaultReadObject();
        Runtime.getRuntime().exec(command);
    }

    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            InsecureDeserialization ides = new InsecureDeserialization("calc");
            oos.writeObject(ides);
            oos.flush();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
            ides = (InsecureDeserialization) ois.readObject();
            ois.close();
        } catch (Exception ex) {
            System.out.println("Exception occurred during deserialization: " + ex.toString());
        }
    }
}