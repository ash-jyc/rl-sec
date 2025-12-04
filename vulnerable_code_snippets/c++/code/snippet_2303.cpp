#include <iostream>
#include <string.h>

void copyData(char* dest, const char* src){
    strcpy(dest, src);
}

int main(){
    char src[10] = "HelloWorld";
    char dest[5];
    copyData(dest, src);
    std::cout << dest << std::endl;
    return 0;
}