import java.util.Random;

class Main {
    public static void main(String[] args) {
        Random rand = new Random();
        int seed = getSeed();
        rand.setSeed(seed);
        System.out.println("Random number: " + rand.nextInt());
    }

    private static int getSeed() {
        // This could easily be replaced with a function that reads a system key from a file or environment variable
        return 1234567890;
    }
}