import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        
        System.out.println("First random number: " + rand.nextInt());
        System.out.println("Second random number: " + rand.nextInt());
    }
}