import java.io.*;

class VulnerableDeserializationExample implements Serializable {
    private String[] data;

    public VulnerableDeserializationExample(String[] data) {
        this.data = data;
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        out.writeInt(data.length);
        for (int i = 0; i < data.length; i++) {
            out.writeObject(data[i]);
        }
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        int length = in.readInt();
        data = new String[length];
        for (int i = 0; i < length; i++) {
            data[i] = (String) in.readObject();
        }
    }
}