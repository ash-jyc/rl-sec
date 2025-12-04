#include <iostream>
#include <string.h>

class Buffer {
    char buf[10];
public:
    void setData(char* data) {
        strcpy(buf, data);
    }
    void printBuffer() {
        std::cout << buf << std::endl;
    }
};

int main() {
    Buffer b;
    char largeData[20] = "This is a large string";
    b.setData(largeData);
    b.printBuffer();
    return 0;
}