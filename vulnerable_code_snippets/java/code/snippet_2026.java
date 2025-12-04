class Main {
    public static void main(String[] args) {
        MyThread t1 = new MyThread("Thread 1");
        MyThread t2 = new MyThread("Thread 2");
        
        t1.start();
        t2.start();
        
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();妆
        }
        
        t1.stop();
        t2.stop();
    }
}

class MyThread extends Thread {
    public MyThread(String name) {
        super(name);
    }
    
    public void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(getName() + " is running...");
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}