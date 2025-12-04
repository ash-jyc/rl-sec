class MyThread extends Thread {
    private volatile boolean stop = false;

    public void run() {
        while (!stop) {
            // Do some work
            System.out.println("Working...");
        }
    }

    public void stopThread() {
        stop = true;
    }

    public static void main(String[] args) throws InterruptedException {
        MyThread thread = new MyThread();
        thread.start();

        // Wait for some time
        Thread.sleep(1000);

        // Stop the thread
        thread.stopThread();
    }
}