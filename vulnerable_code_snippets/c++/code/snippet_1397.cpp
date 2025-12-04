#include <iostream>

class Base {
public:
    virtual void print() {
        std::cout << "Base\n";
    }
};

class Derived : public Base {
public:
    void print() override {
        std::cout << "Derived\n";
    }
};

void print(Base* b) {
    b->print();
}

int main() {
    Derived d;
    Base* b = &d;
    print(&d); // This is fine
    print(b);   // This is also fine
    print(reinterpret_cast<Base*>(12345)); // This is problematic
    return 0;
}