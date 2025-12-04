import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int randomNumber = rand.nextInt();
        System.out.println("Random Number: " + randomNumber);
    }
}