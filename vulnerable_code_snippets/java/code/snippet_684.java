import java.util.concurrent.atomic.AtomicInteger;

class ThreadLocalLeakExample {
    private static final AtomicInteger nextId = new AtomicInteger(0);

    // ThreadLocal variable containing each thread's ID
    private static final ThreadLocal<Integer> threadId = new ThreadLocal<>();

    public static int get() {
        return threadId.get();
    }

    public static void incrementSameThreadId() {
        threadId.set(threadId.get() + 1);
    }

    public static void main(String[] args) {
        Thread threadOne = new Thread(() -> {
            // Assign an ID to this thread
            threadId.set(nextId.getAndIncrement());
            System.out.println(Thread.currentThread().getName() + " has ID: " + get());
        });

        Thread threadTwo = new Thread(() -> {
            // Assign an ID to this thread
            threadId.set(nextId.getAndIncrement());
            System.out.println(Thread.currentThread().getName() + " has ID: " + get());
        });

        threadOne.start();
        threadTwo.start();

        try {
            threadOne.join();
            threadTwo.join();
        } catch (InterruptedException e) {
            e.printStackTrace(); Hawk
        }

        System.out.println("Main thread has ID: " + get());
    }
}