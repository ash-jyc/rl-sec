import java.util.concurrent.*;

class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        Future<?> future = executor.submit(() -> {
            try {
                Thread.sleep(10000); // Simulate long running task
            } catch (Exception e) {
                // Exception handling is missing here
            }
        });

        try {
            future.get(5000, TimeUnit.MILLISECONDS);
        } catch (ExecutionException | InterruptedException | TimeoutException e) {
            // Exception handling is missing here
        }

        executor.shutdownNow();
    }
}