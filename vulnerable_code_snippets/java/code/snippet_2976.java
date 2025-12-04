class Main {
    public static void main(String[] args) {
        MyThread myThread = new MyThread();
        myThread.start();
        
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();妆
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
            System.out.println("Working...");
            
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        
        // Clean up resources
        System.out.println("Cleaning up resources...");
    }
    
    public void stopRunning() {
        running = false;
    }
}