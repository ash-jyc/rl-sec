#include <iostream>

class MyClass {
public:
    int* data;

    MyClass(int size) {
        data = new int[size];
    }

    ~MyClass() {
        delete[] data;
    }
};

void functionCausingMemoryLeak(int size) {
    MyClass* myObject = new MyClass(size);
    // Here we forgot to delete myObject, causing a memory leak
}

void functionCausingDanglingPointer(int size) {
    MyClass* myObject = new MyClass(size);
    delete myObject;
    // Here we deleted myObject, but still try to access its data, causing a dangling pointer
    std::cout << myObject->data[0] << std::endl;
}

int main() {
    functionCausingMemoryLeak(100);
    functionCausingDanglingPointer(100);
    return 0;
}