import java.util.logging.Level;
import java.util.logging.Logger;

class Main {
    private static final Logger LOGGER = Logger.getLogger(Main.class.getName());

    public static void main(String[] args) {
        try {
            throwException();
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "An exception occurred", e);
        }
    }

    private static void throwException() throws Exception {
        throw new Exception("Sensitive Information");
    }
}