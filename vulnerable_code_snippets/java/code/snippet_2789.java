class Main {
    final String importantData = "Sensitive Data";

    public static void main(String[] args) {
        Main obj = new Main();
        System.out.println("Before modification: " + obj.importantData);
        obj.modifyData();
        System.out.println("After modification: " + obj.importantData);
    }

    public void modifyData() {
        // This will compile but it will not change the value of importantData because it is declared as final
        importantData = "Modified Data";
    }
}