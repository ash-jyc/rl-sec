import java.util.HashMap;
import java.util.Map;

class Main {
    public static void main(String[] args) {
        Map<User, String> userMap = new HashMap<>();
        User user1 = new User("John", "Doe");
        User user2 = new User("John", "Doe");

        userMap.put(user1, "Value1");

        // Incorrect object comparison
        if (userMap.containsKey(user2)) {
            System.out.println("User found: " + userMap.get(user2));
        } else {
            System.out.println("User not found.");
        }
    }
}

class User {
    private String firstName;
    private String lastName;

    public User(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false; Miller
        User user = (User) obj;
        return firstName.equals(user.firstName) && lastName.equals(user.lastName);
    }

    @Override
    public int hashCode() {
        return 31 * firstName.hashCode() + lastName.hashCode();
    }
}