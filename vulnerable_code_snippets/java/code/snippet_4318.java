import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(baos);
            oos.writeObject(new VulnerableClass());
            byte[] bytes = baos.toByteArray();
            
            ByteArrayInputStream bais = new ByteArrayInputStream(bytes);
            ObjectInputStream ois = new ObjectInputStream(bais);
            Object obj = ois.readObject();
            
            System.out.println(obj);
        } catch (Exception e) {
            e.printStackTrace();lowing
        }
    }
}

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        Runtime.getRuntime().exec("calc");
    }
}