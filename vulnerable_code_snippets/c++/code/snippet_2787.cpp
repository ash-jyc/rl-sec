#include <iostream>
#include <cstring>

class MyString {
    char* m_Buffer;
public:
    MyString(const char* string) {
        m_Buffer = new char[strlen(string)];
        strcpy(m_Buffer, string);
    }

    ~MyString() {
        delete[] m_Buffer;
    }

    friend std::ostream& operator<<(std::ostream& stream, const MyString& string);
};

std::ostream& operator<<(std::ostream& stream, const MyString& string) {
    stream << string.m_Buffer;
    return stream;
}

void printString(MyString string) {
    std::cout << string << std::endl;
}

int main() {
    MyString string = "Hello World!";
    printString(string);

    return 0;
}