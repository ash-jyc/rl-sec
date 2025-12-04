import java.util.Random;

class VulnerableClass {
    private static final long SEED = 1234567890L;
    private Random random = new Random(SEED);

    public int getNextRandomNumber() {
        return random.nextInt();
    }
}