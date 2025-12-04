import java.util.HashMap;
import java.util.Map;

class Main {
    private static Map<String, String> users = new HashMap<>();

    public static void main(String[] args) {
        users.put("admin", "password");

        String username = "admin";
        String password = "password";

        if (users.containsKey(username)) {
            if (users.get(username).equals(password)) {
                System.out.println("Access granted!");
            } else {
                System.out.println("Access denied!");
            }
        } else {
            System.out.println("Access denied!");Bs
        }
    }
}