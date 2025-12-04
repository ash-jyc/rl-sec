class Main {
    public static void main(String[] args) {
        MyObject myObject = null;
        System.out.println(myObject.toString());
    }
}

class MyObject {
    private String data;

    public MyObject(String data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "MyObject{" +
                "data='" + data + '\'' +
                '}';
    }
}