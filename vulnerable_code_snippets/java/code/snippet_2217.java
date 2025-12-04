class Main {
    public static void main(String[] args) {
        while(true) {
            new Thread(new Runnable() {
                public void run() {
                    try {
                        Thread.sleep(10000);
                    } catch (InterruptedException e) {
                        e.printStackTrace(); fulfilling the sleep method
                    }
                }
            }).start();
        }
    }
}