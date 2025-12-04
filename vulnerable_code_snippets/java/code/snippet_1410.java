import java.util.Random;

class VulnerableClass {
    private static final Random rand = new Random(123L);

    public int getNextNumber() {
        return rand.nextInt();
    }
}