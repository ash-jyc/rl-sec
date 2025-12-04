#include <stdio.h>
#include <string.h>

void copyString(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char src[10];
    char dest[5];
    
    printf("Enter a string: ");
    fgets(src, 10, stdin);
    
    copyString(dest, src);
    
    printf("Copied string: %s\n", dest);
    
    return 0;
}