#include <string.h>

void copy_data(char* dest, char* src, int size) {
    memcpy(dest, src, size);
}

int main() {
    char src[10] = "Hello, World!";
    char dest[5];
    copy_data(dest, src, sizeof(src));
    return 0;
}