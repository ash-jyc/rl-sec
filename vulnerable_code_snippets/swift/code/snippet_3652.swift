import Foundation

class BankAccount {
    var balance: Double = 0.0
    
    func deposit(_ amount: Double) {
        let newBalance = UnsafeMutablePointer<Double>.allocate(capacity: 1)
        newBalance.initialize(to: amount + self.balance)
        self.balance = newBalance.pointee
        newBalance.deallocate()
    }
}

let myAccount = BankAccount()
myAccount.deposit(1000.00)
print("My account balance is \(myAccount.balance)")