class Main {
    public static void main(String[] args) {
        User user = getUser();
        System.out.println(user.getName().toUpperCase());
    }

    private static User getUser() {
        // Assume we have some logic here to fetch user from database
        // For simplicity, let's just return null
        return null;
    }
}

class User {
    private String name;

    public String getName() {
        return this.name;
    }
}