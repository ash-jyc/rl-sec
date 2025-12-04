#include <string.h>
void authenticate(char* password) {
    char buffer[10];
    strcpy(buffer, password);
}
int main() {
    char largePassword[20] = "ThisIsAVeryLargePassword";
    authenticate(largePassword);
    return 0;
}