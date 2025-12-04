#include <iostream>

class MyClass {
public:
    int* myPointer;
    
    MyClass() {
        myPointer = new int[10];
    }
    
    ~MyClass() {
        delete[] myPointer;
    }
};

int main() {
    MyClass* myObject = new MyClass();
    int* tempPointer = myObject->myPointer;
    delete myObject;
    
    // This will cause a dangling pointer because myObject has been deleted.
    std::cout << *tempPointer << std::endl;
    
    return 0;
}