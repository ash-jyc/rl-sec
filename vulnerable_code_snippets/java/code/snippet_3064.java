class MyThread extends Thread {
    volatile boolean stopThread = false;

    public void run() {
        while (!stopThread) {
            // Do some work...
        }
    }

    public void stopThread() {
        stopThread = true;
    }
}

class Main {
    public static void main(String[] args) {
        MyThread myThread = new MyThread();
        myThread.start();

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace(); fulfilling the best practice for exception handling
        }

        myThread.stopThread();
    }
}