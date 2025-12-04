#include <iostream>

class MyClass {
public:
    int* m_data;

    MyClass() {
        m_data = new int[100];
    }

    ~MyClass() {
        // delete[] m_data; // This line is missing which leads to memory leak
    }
};

int main() {
    for(int i = 0; i < 1000000; ++i) {
        MyClass* myObject = new MyClass();
        // delete myObject; // This line is missing which leads to memory leak
    }

    return 0;
}