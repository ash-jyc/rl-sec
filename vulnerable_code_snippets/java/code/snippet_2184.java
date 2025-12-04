import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject("test");
            oos.writeObject(new VulnerableClass());
            oos.flush();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
            System.out.println(ois.readObject());
            System.out.println(ois.readObject());
        } catch (Exception e) {
            e.printStackTrace(); Hawk
        }
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        Runtime.getRuntime().exec("calc");
    }
}