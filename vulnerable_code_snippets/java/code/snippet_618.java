import java.security.SecureRandom;
import java.util.concurrent.ThreadLocalRandom;

class Main {
    public static void main(String[] args) {
        SecureRandom secureRandom = new SecureRandom();
        byte[] randomBytes = new byte[16];
        secureRandom.nextBytes(randomBytes);
        String randomString = new String(randomBytes);
        System.out.println("Random String: " + randomString);
        
        int randomInt = ThreadLocalRandom.current().nextInt();
        System.out.println("Random Integer: " + randomInt);
    }
}