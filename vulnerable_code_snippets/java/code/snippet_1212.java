// A class representing a user
class User {
    String name;

    User(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof User)) {
            return false;
        }
        User otherUser = (User) obj; // This line can potentially throw NullPointerException
        return this.name.equals(otherUser.name);
    }
}

class Main {
    public static void main(String[] args) {
        User user1 = new User("Alice");
        User user2 = null;

        System.out.println(user1.equals(user2)); // This will throw NullPointerException
    }
}