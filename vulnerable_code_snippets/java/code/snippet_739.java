import java.util.concurrent.atomic.AtomicInteger;

class VulnerableClass {
    private static final AtomicInteger nextId = new AtomicInteger(0);

    // ThreadLocal variable containing random object for demo
    private static final ThreadLocal<Object> threadId = new ThreadLocal<Object>() {
        protected Object initialValue() {
            return new Object();
        }
    };

    public Object getNextObject() {
        return threadId.get();
    }

    public static void main(String[] args) throws InterruptedException {
        VulnerableClass vc = new VulnerableClass();

        for (int i = 0; i < 1000000; i++) {
            new Thread(() -> {
                Object o = vc.getNextObject();
                if (o == null) {
                    System.out.println("Object is null");
                }
            }).start();
        }

        Thread.sleep(5000);
    }
}