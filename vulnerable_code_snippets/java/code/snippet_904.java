import java.util.concurrent.*;

class VulnerableThread {
    private static ExecutorService executor = Executors.newFixedThreadPool(10);

    public static void main(String[] args) {
        while (true) {
            executor.submit(new Task());
        }
    }
}

class Task implements Runnable {
    public void run() {
        throw new RuntimeException("Uncaught exception");
    }
}