class Main {
    public static void main(String[] args) {
        new Thread(new Runnable() {
            public void run() {
                while(true) {
                    System.out.println("Running...");
                }
            }
        }).start();
    }
}