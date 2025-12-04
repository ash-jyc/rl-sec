class Main {
    public static void main(String[] args) {
        String result = "";
        for (int i = 0; i < 1000000000; i++) {
            result += "a";
        }
        System.out.println(result);
    }
}