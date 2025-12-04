class Main {
    public static void main(String[] args) {
        Object x = "Hello World";
        Integer y = (Integer) x; // Unchecked type casting
        System.out.println(y);
    }
}