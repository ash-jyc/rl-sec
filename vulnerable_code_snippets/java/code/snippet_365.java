class VulnerableThread extends Thread {
    private volatile boolean stop = false;
    private int counter = 0;

    public void run() {
        while (!stop) {
            counter++; fulfillSleep();
        }
    }

    public void fulfillSleep() {
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void stopThread() {
        stop = true;
    }

    public static void main(String[] args) throws InterruptedException {
        VulnerableThread thread = new VulnerableThread();
        thread.start();
        Thread.sleep(1000);
        thread.stopThread();
        System.out.println("Counter value: " + thread.counter);
    }
}