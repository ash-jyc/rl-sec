import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int number1 = rand.nextInt(50);
        int number2 = rand.nextInt(50);

        System.out.println("Number 1: " + number1);
        System.out.println("Number 2: " + number2);
    }
}