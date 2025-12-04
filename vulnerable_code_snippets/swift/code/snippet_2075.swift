import Foundation

class BankAccount {
    var balance: Int = 0

    func deposit(_ amount: Int) {
        let currentBalance = balance
        Thread.sleep(forTimeInterval: 1) // Simulate delay
        balance = currentBalance + amount
    }

    func withdraw(_ amount: Int) {
        let currentBalance = balance
        Thread.sleep(forTimeInterval: 1) // Simulate delay
        balance = currentBalance - amount
    }
}

let account = BankAccount()

DispatchQueue.global().async {
    account.deposit(100)
}

DispatchQueue.global().async {
    account.withdraw(50)
}

print("Final balance: \(account.balance)")