import java.util.concurrent.atomic.AtomicInteger;

class ThreadLocalMemoryLeak {
    private static final AtomicInteger nextId = new AtomicInteger(0);

    // ThreadLocal variable containing user ID
    private static final ThreadLocal<Integer> threadId = new ThreadLocal<>();

    public static int get() {
        return threadId.get();
    }

    public static void set(int value) {
        threadId.set(value);
    }

    public static void remove() {
        threadId.remove();
    }

    public static void main(String[] args) throws InterruptedException {
        Thread t1 = new Thread(() -> {
            set(nextId.getAndIncrement());
            System.out.println(Thread.currentThread().getName() + " id: " + get());
        });

        Thread t2 = new Thread(() -> {
            set(nextId.getAndIncrement());
            System.out.println(Thread.currentThread().getName() + " id: " + get());
        });

        t1.start();
        t2.start();

        t1.join();
        t2.join();

        System.out.println("Main thread id: " + get());
    }
}