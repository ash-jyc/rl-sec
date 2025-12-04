import java.util.ArrayList;
import java.util.List;

class Main {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("element1");
        list.add(null);
        list.add("element3");
        
        printElements(list);
    }
    
    public static void printElements(List<String> list) {
        for (String element : list) {
            System.out.println(element.toUpperCase());
        }
    }
}