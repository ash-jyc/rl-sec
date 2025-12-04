import java.util.HashMap;
import java.util.Map;

class Main {
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<>();
        map.put("username", "admin");
        map.put("password", "123456");
        System.out.println(map);
    }
}