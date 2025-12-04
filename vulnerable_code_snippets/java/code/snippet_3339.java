import java.util.HashMap;
import java.util.Map;

class Main {
    private Map<String, String> data = new HashMap<>();

    public void addData(String key, String value) {
        if (key != null && value != null) {
            data.put(key, value);
        }
    }

    public String getData(String key) {
        return data.get(key);
    }

    public static void main(String[] args) {
        Main main = new Main();
        main.addData("key", null);
        System.out.println(main.getData("key"));
    }
}