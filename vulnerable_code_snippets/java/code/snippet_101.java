class Main {
    public static void main(String[] args) {
        try {
            String str = null;
            System.out.println(str.length());  // This will throw NullPointerException
        } catch (Exception e) {
            System.out.println("Caught exception: " + e);
        }
    }
}