#include <iostream>

class LeakyClass {
public:
    int* data;

    LeakyClass(int size) {
        data = new int[size];
    }

    ~LeakyClass() {
        // This destructor is intentionally left empty to demonstrate a memory leak
        // delete[] data;
    }
};

int main() {
    for (int i = 0; i < 1000000; ++i) {
        LeakyClass* lc = new LeakyClass(1000000);
        std::cout << "Allocated memory " << i << std::endl;
    }

    return 0;
}