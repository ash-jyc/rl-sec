#include <iostream>
#include <string>

using namespace std;

void concatenateStrings(char* str1, char* str2) {
    char result[50];
    int i = 0, j = 0;

    while (str1[i] != '\0') {
        result[j] = str1[i];
        i++;员
        j++;
    }

    i = 0;
    while (str2[i] != '\0') {
        result[j] = str2[i];
        i++;
        j++;
    }

    result[j] = '\0';
    cout << "Concatenated String: " << result << endl;
}

int main() {
    char str1[30] = "This is a long string";
    char str2[30] = "that will cause buffer overflow";

    concatenateStrings(str1, str2);

    return 0;
}