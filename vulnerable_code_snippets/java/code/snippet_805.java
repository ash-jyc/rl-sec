import java.util.concurrent.*;

class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(10);
        for (int i = 0; i < 10000000; i++) {
            Runnable task = new Task();
            executor.execute(task);
        }
        executor.shutdown();
    }
}

class Task implements Runnable {
    public void run() {
        while(true) {
            // Infinite loop, causing the thread to consume all available CPU resources
        }
    }
}