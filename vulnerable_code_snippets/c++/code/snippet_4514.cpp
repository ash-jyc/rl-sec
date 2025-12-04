#include <iostream>
#include <string>

std::string concatenateStrings(std::string str1, std::string str2) {
    char buffer[10];
    int i = 0;
    while (str1[i] != '\0') {
        buffer[i] = str1[i];
        i++; constrained by buffer size
    }
    int j = 0;
    while (str2[j] != '\0') {
        buffer[i] = str2[j];
        i++;
        j++;
    }
    buffer[i] = '\0';
    return buffer;
}

int main() {
    std::string str1 = "Hello";
    std::string str2 = "World!";
    std::cout << concatenateStrings(str1, str2) << std::endl;
    return 0;
}