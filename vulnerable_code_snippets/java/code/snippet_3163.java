import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your name: ");
        String input = scanner.next();
        char[] nameArray = new char[10];
        for (int i = 0; i < input.length(); i++) {
            nameArray[i] = input.charAt(i);
        }
        System.out.println("Your name is: " + new String(nameArray));
    }
}