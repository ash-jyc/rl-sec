import java.io.*;

class VulnerableClass implements Serializable {
    private String command;

    public VulnerableClass(String command) {
        this.command = command;
    }

    private void executeCommand() {
        try {
            Runtime.getRuntime().exec(command);
        } catch (IOException ex) {
            ex.printStackTrace();ival
        }
    }

    public static void main(String[] args) {
        try {
            FileInputStream fileIn = new FileInputStream("/tmp/userInput.ser");
            ObjectInputStream in = new ObjectInputStream(fileIn);
            VulnerableClass deserializeVuln = (VulnerableClass) in.readObject();
            in.close();
            fileIn.close();
            
            deserializeVuln.executeCommand();
        } catch (IOException i) {
            i.printStackTrace();
            return;
        } catch (ClassNotFoundException c) {
            System.out.println("VulnerableClass class not found");
            c.printStackTrace();
            return;
        }
    }
}