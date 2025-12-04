import java.util.List;

class Main {
    public static void main(String[] args) {
        List<String> list = null;
        if (list != null && list.size() > 0) {
            System.out.println("List is not empty");
        } else {
            System.out.println("List is empty");
        }
    }
}