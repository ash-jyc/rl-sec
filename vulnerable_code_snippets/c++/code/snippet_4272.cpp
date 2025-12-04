#include <iostream>
using namespace std;

class MyClass {
public:
    int x;
    MyClass(int val) : x(val) {
        cout << "Constructor called" << endl;
    }
    ~MyClass() {
        cout << "Destructor called" << endl;
    }
};

int main() {
    MyClass* ptr = new MyClass(5);
    delete ptr;
    ptr = nullptr;  // This line is crucial
    delete ptr;  // This line will cause undefined behavior
    return 0;
}