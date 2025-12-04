class Main {
    public static void main(String[] args) {
        while (true) {
            new Thread() {
                public void run() {
                    try {
                        Thread.sleep(10000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();Bs
                    }
                }
            }.run();
        }
    }
}