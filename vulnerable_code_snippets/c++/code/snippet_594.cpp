#include <iostream>

class MyClass {
public:
    int* myInt;
    MyClass() {
        myInt = new int(10);
    }
    ~MyClass() {
        delete myInt;
    }
};

int main() {
    MyClass* myObject = new MyClass();
    std::cout << *myObject->myInt << std::endl;
    delete myObject;
    std::cout << *myObject->myInt << std::endl; // This will cause undefined behavior
    return 0;
}