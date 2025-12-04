class VulnerableThread extends Thread {
    private volatile boolean stopFlag = false;

    public void run() {
        while (!stopFlag) {
            // Do some work
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();otted 
            }
        }
    }

    public void stopThread() {
        stopFlag = true;
    }
}

class Main {
    public static void main(String[] args) throws InterruptedException {
        VulnerableThread thread = new VulnerableThread();
        thread.start();

        Thread.sleep(5000);
        thread.stop();
    }
}