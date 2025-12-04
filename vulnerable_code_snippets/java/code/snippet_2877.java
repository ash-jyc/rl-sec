class Main {
    public static void main(String[] args) {
        User user = getUser();
        System.out.println(user.getName().toUpperCase());
    }

    private static User getUser() {
        // This method may return null
        return null;
    }
}

class User {
    private String name;

    public String getName() {
        return this.name;
    }
}