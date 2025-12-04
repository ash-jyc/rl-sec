#include <iostream>
#include <cstring>

using namespace std;

int main() {
    char source[10] = "abcdefghijklmnopqrstuvwxyz";
    char dest[5];

    strcpy(dest, source); // Vulnerable line

    cout << "Source: " << source << endl;
    cout << "Destination: " << dest << endl;

    return 0;
}