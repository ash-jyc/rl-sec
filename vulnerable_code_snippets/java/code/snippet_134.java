import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int randomNum = rand.nextInt();
        System.out.println("Random number: " + randomNum);
    }
}