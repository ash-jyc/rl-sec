#include <iostream>

class MyClass {
public:
    int* ptr;
};

int main() {
    MyClass* object = new MyClass();
    std::cout << *object->ptr << std::endl;
    delete object;
    return 0;
}