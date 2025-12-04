class VulnerableClass {
    private String someString;

    public void setSomeString(String someString) {
        this.someString = someString;
    }

    public void printSomeString() {
        System.out.println(someString);
    }
}

class Main {
    public static void main(String[] args) {
        VulnerableClass vc = new VulnerableClass();
        vc.printSomeString();
    }
}