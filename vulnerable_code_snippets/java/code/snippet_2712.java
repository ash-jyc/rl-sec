class Main {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Integer.MAX_VALUE; i++) {
            sb.append("a");
        }
        String s = sb.toString();
    }
}