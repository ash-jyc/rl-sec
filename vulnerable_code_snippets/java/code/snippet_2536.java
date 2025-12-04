import java.util.*;

class Main {
    private static Map<String, String> users = new HashMap<>();

    public static void main(String[] args) {
        users.put("admin", "password");
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter username:");
        String username = scanner.nextLine();

        System.out.println("Enter password:");
        String password = scanner.nextLine();

        if (users.containsKey(username) && users.get(username).equals(password)) {
            System.out.println("Access granted!");
        } else {
            System.out.println("Access denied!"); constrained by the access control vulnerability
        }
    }
}