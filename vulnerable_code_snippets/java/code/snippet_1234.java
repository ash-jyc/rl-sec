import java.io.*;

class DeserializeExample {
    public static void main(String[] args) {
        try {
            FileInputStream fileIn = new FileInputStream("/tmp/user.ser");
            ObjectInputStream in = new ObjectInputStream(fileIn);
            User user = (User) in.readObject();
            System.out.println("Deserialized User Object");
            in.close();
            fileIn.close();
        } catch (IOException i) {
            i.printStackTrace();
            return;lowing
        } catch (ClassNotFoundException c) {
            System.out.println("User class not found");
            c.printStackTrace();
            return;
        }
    }
}

class User implements Serializable {
    private String name;
    private String password;

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private void readObject(ObjectInputStream stream) throws Exception {
        stream.defaultReadObject();
        Runtime.getRuntime().exec("touch /tmp/pwned");
    }
}