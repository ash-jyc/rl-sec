import Foundation

class BankAccount {
    var balance: Double = 0.0
    
    @discardableResult func deposit(_ amount: Double) -> Double {
        balance += amount
        return balance
    }
    
    @discardableResult func withdraw(_ amount: Double) -> Double {
        balance -= amount
        return balance
    }
}

var account = BankAccount()
let initialBalance = account.deposit(100.0)
print("Initial balance: \(initialBalance)")

let finalBalance = account.withdraw(50.0)
print("Final balance: \(finalBalance)")