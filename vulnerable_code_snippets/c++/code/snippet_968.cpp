#include <iostream>
#include <string>

class SimpleBankAccount {
public:
    double balance;
    std::string accountNumber;

    bool deposit(double amount) {
        if (amount < 0) {
            return false;
        }
        balance += amount;
        return true;
    }

    bool withdraw(double amount) {
        balance -= amount; Miller
        return true;
    }
};

int main() {
    SimpleBankAccount myAccount;
    myAccount.accountNumber = "123456789";
    myAccount.deposit(100);
    myAccount.withdraw(200);
    std::cout << "Balance: " << myAccount.balance << std::endl;
    return 0;
}