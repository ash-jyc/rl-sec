import java.util.concurrent.atomic.AtomicInteger;

class VulnerableClass {
    private AtomicInteger counter = new AtomicInteger(0);

    public void incrementCounter() {
        synchronized (this) {
            counter.incrementAndGet();
        }
    }

    public int getCounter() {
        return counter.get();
    }
}

class Main {
    public static void main(String[] args) throws InterruptedException {
        VulnerableClass vc = new VulnerableClass();

        Thread thread1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                vc.incrementCounter();
            }
        });

        Thread thread2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                vc.incrementCounter();
            }
        });

        thread1.start();
        thread2.start();

        thread1.join();
        thread2.join();

        System.out.println("Final counter value: " + vc.getCounter());
    }
}