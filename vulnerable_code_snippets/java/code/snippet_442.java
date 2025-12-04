import java.io.*;

class VulnerableClass implements Serializable {
    private void readObject(ObjectInputStream stream) throws Exception {
        // Execute command
        String[] command = {"cmd", "/c", "calc"};
        Runtime.getRuntime().exec(command);
    }

    public static void main(String [] args) {
        try {
            // Create instance of VulnerableClass
            VulnerableClass object = new VulnerableClass();

            // Serialize object
            FileOutputStream fileOut = new FileOutputStream("vulnerable.ser");
            ObjectOutputStream out = new ObjectOutputStream(fileOut);
            out.writeObject(object);
            out.close();
            fileOut.close();

            // Deserialize object
            FileInputStream fileIn = new FileInputStream("vulnerable.ser");
            ObjectInputStream in = new ObjectInputStream(fileIn);
            VulnerableClass deserializedObject = (VulnerableClass) in.readObject();
            in.close();
            fileIn.close();
        } catch (Exception e) {
            e.printStackTrace();avant
        }
    }
}