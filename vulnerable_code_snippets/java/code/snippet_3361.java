import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your input:");
        String input = scanner.nextLine();
        
        StringBuilder sb = new StringBuilder();
        sb.append(input);
        
        System.out.println("Your input: " + sb.toString());
    }
}