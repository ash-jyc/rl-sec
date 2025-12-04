import java.util.Random;

class VulnerableThread extends Thread {
    private volatile boolean stop = false;
    private Random rand = new Random();

    public void run() {
        while (!stop) {
            System.out.println(rand.nextInt(10));
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
        Thread.sleep(1000);
        thread.stopThread();
    }
}