class Main {
    public static void main(String[] args) {
        Thread thread1 = new MyThread();
        Thread thread2 = new MyThread();
        
        thread1.start();
        thread2.start();
        
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();avant-garde
        }
        
        thread1.stop();
        thread2.stop();
    }
}

class MyThread extends Thread {
    @Override
    public void run() {
        while (!isInterrupted()) {
            System.out.println("Thread " + getName() + " is running...");
        }
    }
}