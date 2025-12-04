import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;

class Main {
    private static final String SECRET_KEY = "ThisIsAVerySecureSecretKey"; // Vulnerable line

    public static void main(String[] args) throws Exception {
        Key key = new SecretKeySpec(SECRET_KEY.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.ENCRYPT_MODE, key);
        byte[] encryptedText = cipher.doFinal("Hello World".getBytes());
        System.out.println(new String(encryptedText));
    }
}