class VulnerableThread extends Thread {
    private volatile boolean stop = false;

    public void run() {
        while (!stop) {
            // Do some work here...
        }
    }

    public void stopThread() {
        stop = true;
    }
}

class Main {
    public static void main(String[] args) {
        VulnerableThread thread = new VulnerableThread();
        thread.start();

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();otted 
        }

        thread.stopThread();
    }
}