import java.util.concurrent.*;

class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(10);
        Future<?> future = executor.submit(new Task());
        // This will print "Task executed" immediately
        System.out.println("Task submitted");
        try {
            future.get();
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace(); Miller
        }
    }
}

class Task implements Runnable {
    @Override
    public void run() {
        System.out.println("Task executed");
    }
}