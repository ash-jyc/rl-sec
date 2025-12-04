class VulnerableClass {
    public void vulnerableMethod() {
        int sensitiveVariable = 10;
        System.out.println("Initial value of sensitiveVariable: " + sensitiveVariable);
        
        new Thread(new Runnable() {
            public void run() {
                sensitiveVariable = 20; // This line of code can modify the sensitiveVariable from another thread
                System.out.println("Modified value of sensitiveVariable: " + sensitiveVariable);
            }
        }).start();
        
        while(sensitiveVariable == 10) {
            Thread.yield(); // Yield to other threads
        }
        
        System.out.println("Final value of sensitiveVariable: " + sensitiveVariable);
    }
    
    public static void main(String[] args) {
        new VulnerableClass().vulnerableMethod();
    }
}