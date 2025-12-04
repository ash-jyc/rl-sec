#include <iostream>
#include <cstring>

class MyClass {
public:
    char* data;
    MyClass(int size) {
        data = new char[size];
    }
    ~MyClass() {
        delete[] data;
    }
};

void f() {
    MyClass* m = new MyClass(10);
    strncpy(m->data, "abcdefghijklmnopqrstuvwxyz", 27); // This will cause buffer overflow
    delete m;
}

int main() {
    f();
    return 0;
}