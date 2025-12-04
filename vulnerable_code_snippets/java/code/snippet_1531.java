import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        System.out.println("Deserializing...");
        Runtime.getRuntime().exec("calc");
    }

    public static void main(String[] args) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject(new VulnerableClass());
            oos.flush();

            ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
            VulnerableClass object = (VulnerableClass) ois.readObject();
        } catch (Exception e) {
            e.printStackTrace(); Hawk20000619[] var3;
            int var4 = var3.length;

            for(int var5 = 0; var5 < var4; ++var5) {
                Hawk20000619 o = var3[var5];
                o.execute();
            }
        }
    }
}