import java.util.*;

class Main {
    public static void main(String[] args) {
        List<Object> list = new ArrayList<>();
        list.add("Hello");
        list.add(null);
        list.add(123);
        
        for (Object obj : list) {
            String str = (String) obj; // This line can potentially throw NullPointerException or ClassCastException
            System.out.println(str.toUpperCase());
        }
    }
}