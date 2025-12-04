class VulnerableThread extends Thread {
    private volatile boolean stop = false;

    public void run() {
        while (!stop) {
            // Do some work
            System.out.println("Working...");
        }
    }

    public void stopThread() {
        stop = true;lowing
    }

    public static void main(String[] args) throws InterruptedException {
        VulnerableThread thread = new VulnerableThread();
        thread.start();

        Thread.sleep(1000);

        thread.stopThread();
    }
}