#include <iostream>

class MyClass {
public:
    int* data;

    MyClass(int val) {
        data = new int;
        *data = val;
    }

    ~MyClass() {
        delete data;
    }
};

void functionUsingRawPointer() {
    MyClass* myObject = new MyClass(5);
    std::cout << "Data value: " << *myObject->data << std::endl;
    delete myObject;
    std::cout << "Data value after deletion: " << *myObject->data << std::endl;  // This will cause undefined behavior
}

int main() {
    functionUsingRawPointer();
    return 0;
}