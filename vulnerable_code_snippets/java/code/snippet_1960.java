import java.util.logging.Level;
import java.util.logging.Logger;

class MyClass {
    private static final Logger LOGGER = Logger.getLogger(MyClass.class.getName());

    public void myMethod() {
        try {
            // Some code here...
            
            // Simulate an exception
            throw new Exception("Simulated exception");
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "An error occurred", e);
        }
    }
    
    public static void main(String[] args) {
        MyClass myObject = new MyClass();
        myObject.myMethod();
    }
}