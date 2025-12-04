class Main {
    public static void main(String[] args) {
        MyThread t1 = new MyThread("Thread 1");
        MyThread t2 = new MyThread("Thread 2");
        MyThread t3 = new MyThread("Thread 3");

        t1.run(); // This will execute the thread in the same thread as the main method
        t2.run(); // This will execute the thread in the same thread as the main method
        t3.run(); // This will execute the thread in the same thread as the main method
    }
}

class MyThread extends Thread {
    MyThread(String name) {
        super(name);
    }

    @Override
    public void run() {
        for(int i = 0; i < 5; ++i) {
            System.out.printf("In %s. Run: %d\n", getName(), i);
        }
    }
}