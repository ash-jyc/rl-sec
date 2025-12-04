#include <iostream>

void function1() {
    char* buffer = new char[10];
    std::cin >> buffer;
    delete[] buffer;
}

int main() {
    function1();
    return 0;
}