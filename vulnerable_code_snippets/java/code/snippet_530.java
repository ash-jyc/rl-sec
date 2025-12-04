// Class name: NullPointerExample
class NullPointerExample {
    public static void main(String[] args) {
        // Create an object of the Person class
        Person person = new Person();
        
        // Try to access the address of the person
        System.out.println("Address: " + person.getAddress().getStreet());
    }
}

class Person {
    private Address address;
    
    public Address getAddress() {
        return address;
    }
}

class Address {
    private String street;
    
    public String getStreet() {
        return street;
    }
}