class User {
    private String username;
    private String password;

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }
}

class Main {
    public static void main(String[] args) {
        try {
            User user = new User("admin", "123456");
            throw new Exception("User created successfully: " + user.username);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}