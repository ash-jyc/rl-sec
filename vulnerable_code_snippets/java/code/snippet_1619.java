class Main {
    public static void main(String[] args) {
        MyThread myThread = new MyThread();
        myThread.run(); // This will execute the run method on the current thread
    }
}

class MyThread extends Thread {
    @Override
    public void run() {
        System.out.println("Running in new thread");
    }
}