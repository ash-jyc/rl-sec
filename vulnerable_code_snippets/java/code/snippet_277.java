class Main {
    private static String sensitiveData = "Sensitive Data";

    public static void main(String[] args) {
        try {
            System.out.println("Accessing Sensitive Data");
            System.out.println(sensitiveData);
        } catch (Exception e) {
            // This is where we handle the exception. But it's not properly done here.
            // We are only printing the stack trace and continuing without any action.
            e.printStackTrace();
        }
    }
}