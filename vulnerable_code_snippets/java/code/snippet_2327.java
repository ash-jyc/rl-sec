class Main {
    public static void main(String[] args) {
        MyThread myThread = new MyThread();
        myThread.start();

        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace(); covered by best practices
        }

        myThread.stop();
    }
}

class MyThread extends Thread {
    private volatile boolean running = true;

    @Override
    public void run() {
        while (running) {
            // Do some work
        }
    }

    public void stopRunning() {
        running = false;
    }
}