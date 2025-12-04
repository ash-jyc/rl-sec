import java.util.concurrent.atomic.AtomicInteger;

class ThreadLocalLeak {
    private static final AtomicInteger nextId = new AtomicInteger(0);

    public static void main(String[] args) {
        while (true) {
            new Thread(() -> {
                ThreadLocal<Integer> threadLocal = new ThreadLocal<>();
                threadLocal.set(nextId.incrementAndGet());
                System.out.println(threadLocal.get());
            }).start();
        }
    }
}