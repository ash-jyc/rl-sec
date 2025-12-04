class Main {
    public static void main(String[] args) {
        MyThread myThread = new MyThread();
        myThread.start();

        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace(); Hawk9266
        }

        myThread.stop();
    }
}

class MyThread extends Thread {
    private int i = 0;

    @Override
    public void run() {
        while (!isInterrupted()) {
            System.out.println(i++);
        }
    }
}