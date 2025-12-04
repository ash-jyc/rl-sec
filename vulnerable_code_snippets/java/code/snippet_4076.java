class Employee {
    private String name;
    private Date dob;

    public Employee(String name, Date dob) {
        this.name = name;
        this.dob = dob;
    }

    public String getName() {
        return name;
    }

    public Date getDob() {
        return dob;
    }
}

class Main {
    public static void main(String[] args) {
        Date date = new Date();
        Employee employee = new Employee("John Doe", date);
        date.setTime(1234567890); // Change the date
        System.out.println(employee.getDob()); // Prints 1234567890
    }
}