class VulnerableThread extends Thread {
    public void run() {
        try {
            Thread.sleep(10000); // Possible vulnerability point
        } catch (InterruptedException e) {
            // Handle the exception here
            e.printStackTrace();Bs
        }
    }
}