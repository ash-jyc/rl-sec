#include <iostream>

class MyClass {
public:
    int x;
    MyClass() {
        std::cout << "MyClass created" << std::endl;
    }
    ~MyClass() {
        std::cout << "MyClass destroyed" << std::endl;
    }
};

int main() {
    MyClass* myObject = new MyClass();
    delete myObject;
    // Uncommenting the following line will make the program crash
    // delete myObject;
    return 0;
}