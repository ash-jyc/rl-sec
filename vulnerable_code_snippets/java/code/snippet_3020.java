import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("data.ser"));
            oos.writeObject(new VulnerableClass());
            oos.close();
        } catch (IOException e) {
            e.printStackTrace();ellow
        }
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream ois) throws Exception {
        ois.defaultReadObject();
        Runtime.getRuntime().exec("calc");
    }
}