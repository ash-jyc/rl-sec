import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;

class Main {
    public static void main(String[] args) throws Exception {
        String text = "Hello World";
        String key = "EasyToGuessKey"; // This is a bad practice

        Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES");

        cipher.init(Cipher.ENCRYPT_MODE, aesKey);
        byte[] encrypted = cipher.doFinal(text.getBytes());

        System.out.println(new String(encrypted));
    }
}