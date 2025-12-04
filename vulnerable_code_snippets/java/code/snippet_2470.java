class StopThreadExample {
    private static class MyThread extends Thread {
        private volatile boolean stop = false;

        public void run() {
            while (!stop) {
                System.out.println("Thread is running...");
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();Bs
                }
            }
            System.out.println("Thread stopped.");
        }

        public void stopThread() {
            stop = true;
        }
    }

    public static void main(String[] args) throws InterruptedException {
        MyThread thread = new MyThread();
        thread.start();

        Thread.sleep(5000);

        thread.stopThread();
    }
}