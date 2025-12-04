import java.io.*;

class VulnerableClass implements Serializable {
    private static final long serialVersionUID = 1L;
    private String command;

    public VulnerableClass(String command) {
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
            VulnerableClass payload = new VulnerableClass("calc");
            oos.writeObject(payload);
            oos.close();

            ByteArrayInputStream bin = new ByteArrayInputStream(bos.toByteArray());
            ObjectInputStream ois = new ObjectInputStream(bin);
            Object obj = ois.readObject();
            System.out.println(obj);
        } catch (Exception e) {
            e.printStackTrace(); Miller
        }
    }
}