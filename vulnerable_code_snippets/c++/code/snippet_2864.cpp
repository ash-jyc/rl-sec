#include <iostream>
#include <cstring>

class VulnerableClass {
public:
    char buffer[10];

    void setData(const char* data) {
        strcpy(buffer, data);
    }

    void printData() {
        std::cout << "Data: " << buffer << std::endl;
    }
};

int main() {
    VulnerableClass vc;
    const char* data = "This is a long string that will cause a buffer overflow";
    vc.setData(data);
    vc.printData();

    return 0;
}