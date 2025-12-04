import java.util.ArrayList;
import java.util.List;

class Main {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("Item1");
        list.add(null);
        list.add("Item3");
        
        for (String item : list) {
            System.out.println(item.toUpperCase());
        }
    }
}