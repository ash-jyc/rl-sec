import Foundation

class Student {
    var name: String?
    var age: Int?
}

func printStudentInfo(student: Student?) {
    let studentName = student?.name
    let studentAge = student?.age
    
    // This line will crash if student is nil
    print("Student Name: \(studentName), Age: \(studentAge)")
}

printStudentInfo(student: nil)