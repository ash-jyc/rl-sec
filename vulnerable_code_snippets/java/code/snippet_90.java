class VulnerableClass {
    private static final String SENSITIVE_INFO = "SensitivePassword123";

    public void printSensitiveInfo() {
        System.out.println(SENSITIVE_INFO);
    }
}