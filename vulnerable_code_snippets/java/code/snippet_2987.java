import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random(1);

        for (int i = 0; i < 5; i++) {
            System.out.println(rand.nextInt());
        }
    }
}