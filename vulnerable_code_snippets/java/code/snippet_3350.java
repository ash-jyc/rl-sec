class VulnerableThread extends Thread {
    private volatile boolean stopRequested = false;

    public void run() {
        while (!stopRequested) {
            // Do some work here...
        }
    }

    public void stopThread() {
        stopRequested = true;
    }
}

class Main {
    public static void main(String[] args) {
        VulnerableThread thread = new VulnerableThread();
        thread.start();

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();Bs
        }

        thread.stopThread();
    }
}