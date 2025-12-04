import java.util.*;

class Main {
    public static void main(String[] args) {
        List<Object> list = new ArrayList<>();
        list.add("Hello World");
        list.add(123);
        
        for (Object obj : list) {
            String str = (String) obj; // Unchecked cast
            System.out.println(str);
        }
    }
}