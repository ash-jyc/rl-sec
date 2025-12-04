class Main {
    public static void main(String[] args) {
        try {
            int[] myNumbers = {1, 2, 3};
            System.out.println(myNumbers[10]); // This will throw an ArrayIndexOutOfBoundsException
        } catch (Exception e) {
            // This will catch all exceptions, including ArrayIndexOutOfBoundsException
            System.out.println("An exception occurred: " + e);
        }
    }
}