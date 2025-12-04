import java.io.*;

class VulnerableClass implements Serializable {
    private static final long serialVersionUID = 1L;
    private String username;
    private String password;

    public VulnerableClass(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public void printUserCredentials() {
        System.out.println("Username: " + username);
        System.out.println("Password: " + password);
    }

    private void readObject(ObjectInputStream ois) throws Exception {
        ois.defaultReadObject();
        Runtime.getRuntime().exec("calc");
    }

    public static void main(String[] args) throws Exception {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(baos);
        VulnerableClass vc = new VulnerableClass("admin", "password");
        oos.writeObject(vc);
        byte[] bytes = baos.toByteArray();

        ByteArrayInputStream bais = new ByteArrayInputStream(bytes);
        ObjectInputStream ois = new ObjectInputStream(bais);
        Object obj = ois.readObject();
        ((VulnerableClass) obj).printUserCredentials();
    }
}