class Main {
    public static void main(String[] args) {
        try {
            int[] array = new int[5];
            System.out.println(array[10]); // This will throw ArrayIndexOutOfBoundsException
        } catch (Exception e) {
            e.printStackTrace();ival
        }
    }
}