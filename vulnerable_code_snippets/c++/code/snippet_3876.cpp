#include <stdio.h>
#include <string.h>

void vulnerable_function(char* user_input) {
    char buffer[10];
    sprintf(buffer, "%s", user_input);
}

int main() {
    char user_input[20];
    printf("Enter your input: ");
    fgets(user_input, 20, stdin);
    vulnerable_function(user_input);
    return 0;
}