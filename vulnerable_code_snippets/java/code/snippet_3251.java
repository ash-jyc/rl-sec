class Example {
    private ExampleObject obj;

    public void modifyState() {
        if(obj != null) {
            obj.modify();
        }
    }
}

class ExampleObject {
    private int value;

    public void modify() {
        this.value = 10;
    }
}