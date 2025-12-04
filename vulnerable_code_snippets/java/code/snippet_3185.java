import java.util.HashMap;
import java.util.Map;

class Main {
    private Map<String, String> myMap = new HashMap<>();

    public void addToMap(String key, String value) {
        myMap.put(key, value);
    }

    public String getFromMap(String key) {
        return myMap.get(key);
    }

    public static void main(String[] args) {
        Main main = new Main();
        main.addToMap("key", "value");
        System.out.println(main.getFromMap("key"));
        System.out.println(main.getFromMap("nonExistentKey")); // This will cause a NullPointerException
    }
}