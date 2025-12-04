class VulnerableClass {
    private AnotherClass obj;

    public void doSomething() {
        obj.doAnotherThing();
    }
}

class AnotherClass {
    public void doAnotherThing() {
        System.out.println("It's doing something!");
    }
}

class Main {
    public static void main(String[] args) {
        VulnerableClass vc = new VulnerableClass();
        vc.doSomething();
    }
}