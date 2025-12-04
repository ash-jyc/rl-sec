import java.util.concurrent.ThreadLocalRandom;

class Main {
    public static void main(String[] args) {
        int randomNum = ThreadLocalRandom.current().nextInt();
        System.out.println("Random number: " + randomNum);
    }
}