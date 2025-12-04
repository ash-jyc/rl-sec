import java.util.concurrent.atomic.AtomicInteger;

class ThreadLocalLeak {
    private static final AtomicInteger nextId = new AtomicInteger(0);

    // ThreadLocal variable containing the Foo instance
    private static final ThreadLocal<Foo> threadFoo = new ThreadLocal<>();

    public static void main(String[] args) throws InterruptedException {
        while (true) {
            Thread thread = new Thread(() -> {
                Foo foo = new Foo(nextId.getAndIncrement());
                threadFoo.set(foo);
                System.out.println("Thread " + foo.id + " has Foo " + foo.id);
            });
            thread.start();
            Thread.sleep(100);
        }
    }

    static class Foo {
        int id;

        Foo(int id) {
            this.id = id;
        }
    }
}