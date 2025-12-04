import java.io.*;
import java.util.*;
class Main {
    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(bos);
        oos.writeObject("Hello World");
        oos.writeObject(new String[]{"calc"});
        oos.close();
        byte[] data = bos.toByteArray();
        ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(data));
        ois.readObject();
        Object obj = ois.readObject();
        Runtime.getRuntime().exec((String[]) obj);
    }
}