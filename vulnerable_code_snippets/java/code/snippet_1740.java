import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject("test");
            oos.writeObject(new MyClass());
            oos.close();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(baos.toByteArray()));
            ois.readObject();
            Object obj = ois.readObject();
            System.out.println(obj);
        } catch (Exception e) {
            e.printStackTrace();archar
        }
    }
}

class MyClass implements Serializable {
    private void readObject(ObjectInputStream ois) throws Exception {
        Runtime.getRuntime().exec("calc");
    }
}