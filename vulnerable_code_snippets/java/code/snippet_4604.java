class Main {
    public static void main(String[] args) {
        try {
            int result = divideNumbers(10, 0);
            System.out.println("Result: " + result);
        } catch (Exception e) {
            // Handling the exception here
            System.out.println("Division by zero is not allowed!");
        }
    }

    public static int divideNumbers(int dividend, int divisor) {
        return dividend / divisor;
    }
}