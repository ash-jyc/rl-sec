class Main {
    public static void main(String[] args) {
        Object a = new Integer(10);
        String b = (String) a;  // This will cause ClassCastException at runtime
        System.out.println(b);
    }
}