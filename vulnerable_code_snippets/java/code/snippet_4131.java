import java.util.*;

class Main {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("Hello");
        list.add(null);
        list.add("World");
        
        for (String s : list) {
            System.out.println(s.toUpperCase());
        }
    }
}