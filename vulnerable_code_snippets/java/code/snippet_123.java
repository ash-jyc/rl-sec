class Main {
    public static void main(String[] args) {
        try {
            int result = divideNumbers(10, 0);
            System.out.println("Result: " + result);
        } catch (Exception e) {
            // This catch block will never get executed because ArithmeticException is not caught here
            System.out.println("Error: " + e.getMessage());
        }
    }

    public static int divideNumbers(int num1, int num2) throws ArithmeticException {
        return num1 / num2;
    }
}