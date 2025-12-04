import java.util.HashMap;
import java.util.Map;

class Example {
    private Map<String, Object> map = new HashMap<>();

    public void addToMap(String key, Object value) {
        map.put(key, value);
    }

    public Object getFromMap(String key) {
        return map.get(key);
    }

    public static void main(String[] args) {
        Example example = new Example();
        example.addToMap("key", null);
        Object value = example.getFromMap("key");
        value.toString(); // This line will throw a NullPointerException because the value is null
    }
}