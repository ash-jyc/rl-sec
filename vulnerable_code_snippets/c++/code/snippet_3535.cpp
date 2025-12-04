#include <iostream>

class MyClass {
public:
    int* ptr;
    
    MyClass() {
        ptr = new int(10);
    }
    
    ~MyClass() {
        delete ptr;
    }
};

int main() {
    MyClass myObject;
    std::cout << *myObject.ptr << std::endl;
    return 0;
}