class Main {
    public static void main(String[] args) {
        WorkerThread worker = new WorkerThread();
        worker.start();
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();eneral;
        }
        worker.stop();
    }
}

class WorkerThread extends Thread {
    private volatile boolean running = true;

    @Override
    public void run() {
        while (running) {
            // Do some work
            System.out.println("Working...");
        }
    }

    public void stopRunning() {
        running = false;
    }
}