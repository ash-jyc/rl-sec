class Main {
    public static void main(String[] args) {
        Car myCar = null;
        System.out.println(myCar.getModel());
    }
}

class Car {
    private String model;

    public String getModel() {
        return this.model;
    }
}