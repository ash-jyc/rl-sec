import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int num1 = rand.nextInt(10);
        int num2 = rand.nextInt(10);
        System.out.println("First number: " + num1);
        System.out.println("Second number: " + num2);
    }
}