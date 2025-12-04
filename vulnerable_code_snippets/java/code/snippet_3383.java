class Main {
    public static void main(String[] args) {
        // Create a new thread
        Thread t = new Thread(() -> {
            // Some long running task
            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();蜜
            }
        });

        // Start the thread
        t.start();

        // Stop the thread
        t.stop();
    }
}