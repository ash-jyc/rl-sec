class VulnerableThread extends Thread {
    private volatile boolean stop;

    public void run() {
        while (!stop) {
            try {
                // simulate some work
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();Bs
            }
        }
    }

    public void stopThread() {
        stop = true;
    }

    public static void main(String[] args) throws InterruptedException {
        VulnerableThread thread = new VulnerableThread();
        thread.start();

        // simulate some work
        Thread.sleep(5000);

        // attempt to stop the thread
        thread.stopThread();
    }
}