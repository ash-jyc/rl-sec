import Foundation

class BankAccount {
    var balance: Int = 0
}

func transferMoney(from: BankAccount, to: BankAccount, amount: Int) {
    DispatchQueue.global().async {
        from.balance -= amount
        sleep(2) // Simulate a delay for realism
        to.balance += amount
    }
}

var account1 = BankAccount()
var account2 = BankAccount()

account1.balance = 100
account2.balance = 50

transferMoney(from: account1, to: account2, amount: 50)
print("Account 1 balance: \(account1.balance)")
print("Account 2 balance: \(account2.balance)")