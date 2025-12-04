#include <iostream>
#include <string.h>

class VulnerableClass {
public:
    char* buffer;
    int bufferSize;

    VulnerableClass(int size) {
        buffer = new char[size];
        bufferSize = size;
    }

    ~VulnerableClass() {
        delete[] buffer;
    }

    void setData(const char* data, int dataSize) {
        if (dataSize > bufferSize) {
            // If the input data is larger than the buffer, we will overwrite the memory outside of the buffer.
            memcpy(buffer, data, dataSize);
        } else {
            memcpy(buffer, data, bufferSize);
        }
    }
};

int main() {
    VulnerableClass vc(10);
    const char* data = "This is a long string that will cause a buffer overflow.";
    vc.setData(data, strlen(data));
    std::cout << vc.buffer << std::endl;
    return 0;
}