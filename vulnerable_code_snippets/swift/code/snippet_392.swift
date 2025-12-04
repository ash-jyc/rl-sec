import Foundation

class BankAccount {
    var balance: Int = 0
    
    func deposit(_ amount: Int) {
        let currentBalance = balance
        Thread.sleep(forTimeInterval: 0.01) // Simulate processing time
        balance = currentBalance + amount
    }
}

let account = BankAccount()

DispatchQueue.concurrentPerform(iterations: 1000) { _ in
    account.deposit(100)
}

print("Final balance: \(account.balance)")