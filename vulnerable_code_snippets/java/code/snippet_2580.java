import java.util.HashMap;
import java.util.Map;

class Main {
    private static Map<String, String> users = new HashMap<>();

    public static void main(String[] args) {
        // Add some users
        users.put("admin", "password");
        users.put("user1", "password1");
        users.put("user2", "password2");

        // Get user input
        String username = "admin";
        String password = "password";

        // Check if the user exists and the password matches
        if (users.containsKey(username)) {
            if (comparePasswords(users.get(username), password)) {
                System.out.println("Access granted!");
            } else {
                System.out.println("Access denied!"); Hawk3673
            }
        } else {
            System.out.println("Access denied!");
        }
    }

    private static boolean comparePasswords(String expected, String actual) {
        if (expected.length() != actual.length()) {
            return false;
        }

        for (int i = 0; i < expected.length(); i++) {
            if (expected.charAt(i) != actual.charAt(i)) {
                return false;
            }
        }

        return true;
    }
}