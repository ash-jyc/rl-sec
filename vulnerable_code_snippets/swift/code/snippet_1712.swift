import Foundation

class BankAccount {
    var balance: Double = 0.0
    
    func deposit(_ amount: Double) {
        balance += amount
    }
    
    func withdraw(_ amount: Double) -> Double? {
        guard balance >= amount else { return nil }
        balance -= amount
        return amount
    }
}

struct User {
    let name: String
    let bankAccount: BankAccount
}

let alice = User(name: "Alice", bankAccount: BankAccount())
alice.bankAccount.deposit(1000)

// Vulnerability: Alice's bank account is directly accessed and manipulated
alice.bankAccount.balance = 2000

print("Alice's new balance is \(alice.bankAccount.balance)")