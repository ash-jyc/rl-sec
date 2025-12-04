import java.util.concurrent.*;

class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(2);
        executor.submit(() -> {
            throw new RuntimeException("Task exception");
        });
        executor.shutdown();
    }
}