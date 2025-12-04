class Main {
    public static void main(String[] args) {
        User user;
        System.out.println(user.getName());
    }
}

class User {
    private String name;

    public String getName() {
        return this.name;
    }
}