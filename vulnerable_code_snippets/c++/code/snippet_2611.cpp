#include <iostream>

int main() {
    int x = 2147483647; // Maximum value of int datatype
    std::cout << "Initial value of x: " << x << std::endl;

    x = x + 1; // This will cause overflow

    std::cout << "Value of x after overflow: " << x << std::endl;

    return 0;
}