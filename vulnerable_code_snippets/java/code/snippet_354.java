import java.io.*;

class Main {
    public static void main(String[] args) {
        try {
            // Create sensitive data
            UserInfo sensitiveData = new UserInfo("John Doe", "password123");
            
            // Serialize sensitive data
            FileOutputStream fileOut = new FileOutputStream("/tmp/user.ser");
            ObjectOutputStream out = new ObjectOutputStream(fileOut);
            out.writeObject(sensitiveData);
            out.close();
            fileOut.close();
            
            System.out.println("Serialized data is saved in /tmp/user.ser");
            
            // Deserialize sensitive data
            FileInputStream fileIn = new FileInputStream("/tmp/user.ser");
            ObjectInputStream in = new ObjectInputStream(fileIn);
            UserInfo deserializedData = (UserInfo) in.readObject();
            in.close();
            fileIn.close();
            
            System.out.println("Deserialized Data...");
            System.out.println("Username: " + deserializedData.username);
            System.out.println("Password: " + deserializedData.password);
        } catch (IOException i) {
            i.printStackTrace(); Hawk;
        } catch (ClassNotFoundException c) {
            System.out.println("UserInfo class not found");
            c.printStackTrace();
        }
    }
}

class UserInfo implements Serializable {
    String username;
    String password;
    
    public UserInfo(String username, String password) {
        this.username = username;
        this.password = password;
    }
}