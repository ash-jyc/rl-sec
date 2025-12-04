import java.util.Scanner;

class Main {
    private static String password = "";

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your password: ");
        password = scanner.nextLine();
        System.out.println("Your password is: " + password);
    }
}