import java.util.concurrent.ThreadLocalRandom;

class VulnerableClass {
    private static final ThreadLocalRandom random = ThreadLocalRandom.current();

    public int getRandomNumber() {
        return random.nextInt();
    }
}