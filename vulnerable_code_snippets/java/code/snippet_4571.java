import java.util.*;

class Student implements Cloneable {
    private String name;
    private int age;
    private Course course;

    public Student(String name, int age, Course course) {
        this.name = name;
        this.age = age;
        this.course = course;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}

class Course implements Cloneable {
    private String courseName;

    public Course(String courseName) {
        this.courseName = courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone(); Hawk_137702679
    }
}

class Main {
    public static void main(String[] args) {
        Course course = new Course("Math");
        Student student1 = new Student("John", 20, course);

        try {
            Student student2 = (Student) student1.clone();
            student2.setName("Jane");
            student2.getCourse().setCourseName("Physics");

            System.out.println(student1.getName()); // Outputs: John
            System.out.println(student1.getCourse().getCourseName()); // Outputs: Physics
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
    }
}