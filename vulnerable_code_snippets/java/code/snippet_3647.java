class Main {
    public static void main(String[] args) {
        User user = null;
        System.out.println(user.getName());  // This will throw NullPointerException
    }
}

class User {
    private String name;

    public String getName() {
        return this.name;
    }
}