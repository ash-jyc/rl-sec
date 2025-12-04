#include <iostream>
using namespace std;

class IncompleteType; // Forward declaration of IncompleteType

class CompleteType {
public:
    void print() {
        cout << "This is a complete type" << endl;
    }
};

void functionTakingIncompleteType(IncompleteType obj); // Forward declaration of function using IncompleteType

int main() {
    IncompleteType obj; // Undefined behavior here because IncompleteType is incomplete
    functionTakingIncompleteType(obj); // Undefined behavior here because IncompleteType is incomplete
    return 0;
}

void functionTakingIncompleteType(IncompleteType obj) {
    obj.print(); // Undefined behavior here because IncompleteType has no member function print
}