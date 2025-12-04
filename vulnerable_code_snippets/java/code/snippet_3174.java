import java.io.*;

class Main implements Serializable {
    private String sensitiveData;

    public Main(String sensitiveData) {
        this.sensitiveData = sensitiveData;
    }

    public static void main(String[] args) {
        Main main = new Main("Sensitive Information");
        try {
            FileOutputStream fileOut = new FileOutputStream("/tmp/user.ser");
            ObjectOutputStream out = new ObjectOutputStream(fileOut);
            out.writeObject(main);
            out.close();
            fileOut.close();
            System.out.printf("Serialized data is saved in /tmp/user.ser");
        } catch (IOException i) {
            i.printStackTrace();ViewById 
        }
    }
}