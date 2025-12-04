#include <iostream>
#include <cstring>

void getUserInput(char* buffer){
    std::cin >> buffer;
}

int main(){
    char buffer[10];
    getUserInput(buffer);
    std::cout << "Your input was: " << buffer << std::endl;
    return 0;
}