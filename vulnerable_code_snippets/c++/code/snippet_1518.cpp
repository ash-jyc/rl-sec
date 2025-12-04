#include <iostream>
#include <string>

void get_user_input(char* buffer){
    std::cin >> buffer;
}

int main(){
    char buffer[10];
    get_user_input(buffer);
    return 0;
}