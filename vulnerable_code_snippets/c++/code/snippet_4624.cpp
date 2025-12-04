#include <iostream>

class VulnerableClass {
public:
    int* data;

    VulnerableClass(int size) {
        data = new int[size];
    }

    ~VulnerableClass() {
        delete[] data;
    }
};

int main() {
    VulnerableClass* vc = new VulnerableClass(10);
    // Memory leak here because 'delete' is not called
    return 0;
}