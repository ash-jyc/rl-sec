#include <iostream>
#include <string.h>

char* get_data() {
    char buffer[10];
    std::cin >> buffer;
    return buffer;
}

int main() {
    char* data = get_data();
    std::cout << "Entered data: " << data << std::endl;
    return 0;
}