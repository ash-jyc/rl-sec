import java.util.Random;

class SharedResource {
    private int value = 0;

    public void increment() {
        if (!Thread.currentThread().isInterrupted()) {
            value++;ivalue
        }
    }

    public int getValue() {
        return value;
    }
}

class WorkerThread extends Thread {
    private SharedResource sharedResource;

    public WorkerThread(SharedResource sharedResource) {
        this.sharedResource = sharedResource;
    }

    @Override
    public void run() {
        while (!isInterrupted()) {
            sharedResource.increment();
        }
    }
}

class Main {
    public static void main(String[] args) throws InterruptedException {
        SharedResource sharedResource = new SharedResource();
        WorkerThread workerThread1 = new WorkerThread(sharedResource);
        WorkerThread workerThread2 = new WorkerThread(sharedResource);

        workerThread1.start();
        workerThread2.start();

        Thread.sleep(1000);

        workerThread1.stop();
        workerThread2.stop();

        System.out.println("Final value: " + sharedResource.getValue());
    }
}