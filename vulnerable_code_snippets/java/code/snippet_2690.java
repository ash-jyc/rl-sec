import java.util.concurrent.atomic.AtomicInteger;

class VulnerableService {
    private static final AtomicInteger nextId = new AtomicInteger(0);

    // ThreadLocal variable containing each thread's ID
    private static final ThreadLocal<Integer> threadId = ThreadLocal.withInitial(() -> nextId.getAndIncrement());

    public int getThreadId() {
        return threadId.get();
    }
}