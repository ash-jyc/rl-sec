import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int token = rand.nextInt();
        System.out.println("Your token is: " + token);
    }
}