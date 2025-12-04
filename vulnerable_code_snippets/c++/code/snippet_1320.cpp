#include <iostream>

class MemoryLeakClass {
public:
    int* data;

    MemoryLeakClass() {
        data = new int[100];
    }

    ~MemoryLeakClass() {
        // This line causes memory leak
        // delete[] data;
    }
};

int main() {
    for(int i = 0; i < 1000000; ++i) {
        MemoryLeakClass* mlc = new MemoryLeakClass();
        delete mlc;
    }

    return 0;
}