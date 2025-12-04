#include <stdio.h>
#include <string.h>

void copy_input(char* buffer) {
    char input[10];
    gets(input);
    strcpy(buffer, input);
}

int main() {
    char buffer[5];
    copy_input(buffer);
    printf("%s\n", buffer);
    return 0;
}