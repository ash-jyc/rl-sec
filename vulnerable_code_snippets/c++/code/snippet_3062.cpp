#include <iostream>
using namespace std;

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

int main() {
    MyClass* mc = new MyClass(10);
    for(int i = 0; i <= 10; ++i) {
        mc->data[i] = i;
    }
    delete mc;
    return 0;
}