#include <string.h>
#include <stdio.h>

void copyString(char* destination, char* source) {
    strcpy(destination, source);
}

int main() {
    char source[10];
    char destination[5];
    
    printf("Enter a string: ");
    fgets(source, 10, stdin);
    
    copyString(destination, source);
    
    printf("Copied string: %s\n", destination);
    
    return 0;
}