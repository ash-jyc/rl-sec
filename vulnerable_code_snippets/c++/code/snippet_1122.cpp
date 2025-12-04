#include <iostream>

class MyClass {
public:
    int* myPointer;
};

int main() {
    MyClass obj;
    std::cout << "Value of myPointer before initialization: " << *obj.myPointer << std::endl;
    *obj.myPointer = 10;
    std::cout << "Value of myPointer after initialization: " << *obj.myPointer << std::endl;
    return 0;
}