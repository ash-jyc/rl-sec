#include <iostream>
#include <string.h>

void copyInput(char* buffer){
    std::cin >> buffer;
}

int main(){
    char buffer[10];
    copyInput(buffer);
    std::cout << buffer << std::endl;
    return 0;
}