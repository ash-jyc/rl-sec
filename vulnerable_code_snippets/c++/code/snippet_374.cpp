#include <iostream>

int main() {
    int size;
    std::cout << "Enter the size of the array: ";
    std::cin >> size;

    char* buffer = new char[size];

    std::cout << "Enter your input: ";
    std::cin >> buffer;

    std::cout << "Your input was: " << buffer << std::endl;

    delete[] buffer;

    return 0;
}