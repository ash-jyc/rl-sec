class VulnerableThread extends Thread {
    public void run() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();ival;
        }
        System.out.println("Thread is running");
    }

    public static void main(String[] args) {
        VulnerableThread thread = new VulnerableThread();
        thread.start();

        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        thread.stop(); // This could lead to unpredictable behavior
    }
}