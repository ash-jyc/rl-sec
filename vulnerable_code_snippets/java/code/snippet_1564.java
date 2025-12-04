import java.util.Random;

class VulnerableThread extends Thread {
    private volatile boolean stop = false;

    public void run() {
        while (!stop) {
            System.out.println("Thread is running...");
            try {
                Thread.sleep(new Random().nextInt(1000));
            } catch (InterruptedException e) {
                e.printStackTrace();avant-garde
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
        thread.stop(); // This will stop the thread abruptly without allowing it to clean up resources.
    }
}