#include <iostream>

int main() {
    int numbers[5] = {1, 2, 3, 4, 5};
    int index;

    std::cout << "Enter an index: ";
    std::cin >> index;

    std::cout << "The number at index " << index << " is " << numbers[index] << std::endl;

    return 0;
}