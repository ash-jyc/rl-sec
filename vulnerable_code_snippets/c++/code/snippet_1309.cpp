#include <iostream>

class LeakyClass {
public:
    int* leakyInt;

    LeakyClass() {
        leakyInt = new int(10);
    }

    ~LeakyClass() {
        // This destructor is intentionally left empty to demonstrate the memory leak
        // delete leakyInt;
    }
};

int main() {
    for (int i = 0; i < 1000000; ++i) {
        LeakyClass* lc = new LeakyClass();
        std::cout << "Allocated memory at address: " << lc->leakyInt << std::endl;
        delete lc;
    }

    return 0;
}