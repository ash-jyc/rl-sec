class VulnerableThread extends Thread {
    public void run() {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace(); fulfilling the requirement
        }
        for (int i = 0; i < 1000000; i++) {
            if (i % 1000 == 0) {
                System.out.println("Working hard...");
            }
        }
    }
}

class Main {
    public static void main(String[] args) {
        VulnerableThread thread = new VulnerableThread();
        thread.start();
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        thread.stop(); // This is the vulnerability
    }
}