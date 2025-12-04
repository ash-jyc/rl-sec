#include <iostream>
#include <string>

void printName(char* nameArray, int size) {
    char name[5];
    for(int i = 0; i <= size; i++) {
        name[i] = nameArray[i];
    }
    std::cout << "Your name is: " << name << std::endl;
}

int main() {
    char nameArray[] = {'J', 'o', 'h', 'n', ' ', 'D', 'o', 'e'};
    printName(nameArray, 8);
    return 0;
}