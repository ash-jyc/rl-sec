#include <iostream>
#include <string>

using namespace std;

class User {
public:
    char* name;
    int age;

    User(const char* _name, int _age) {
        name = new char[strlen(_name) + 1];
        strcpy(name, _name);
        age = _age;
    }

    ~User() {
        delete[] name;
    }
};

int main() {
    User* user = new User("John Doe", 30);
    cout << "User's name: " << user->name << ", Age: " << user->age << endl;
    delete user;
    return 0;
}