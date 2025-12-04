import java.util.Scanner;

class BufferOverflow {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your name: ");
        String name = scanner.nextLine();
        char[] nameArray = new char[10];
        for (int i = 0; i < name.length(); i++) {
            nameArray[i] = name.charAt(i);
        }
        System.out.println("Your name is: " + new String(nameArray));
    }
}