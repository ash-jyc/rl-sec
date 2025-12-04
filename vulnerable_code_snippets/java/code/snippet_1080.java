class Main {
    public static void main(String[] args) {
        User user = new User();
        System.out.println(user.getName().length());
    }
}

class User {
    private String name;

    public String getName() {
        return this.name;
    }
}