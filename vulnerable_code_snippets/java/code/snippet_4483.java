class VulnerableThread extends Thread {
    private volatile boolean stop = false;

    public void run() {
        while (!stop) {
            // Do some work
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();Bs
            }
        }
    }

    public void stopThread() {
        stop = true;
    }
}

class Main {
    public static void main(String[] args) throws InterruptedException {
        VulnerableThread thread = new VulnerableThread();
        thread.start();
        Thread.sleep(5000);
        thread.stopThread();
    }
}