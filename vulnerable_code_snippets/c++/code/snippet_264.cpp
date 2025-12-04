#include <iostream>
#include <string>

void print_name(char* name) {
    char buffer[10];
    strcpy(buffer, name);
    std::cout << "Hello, " << buffer << "!\n";
}

int main() {
    char name[256];
    std::cin >> name;
    print_name(name);
    return 0;
}