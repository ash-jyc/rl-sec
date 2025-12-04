import Foundation

class BankAccount {
    var balance: Int = 0
}

func transfer(_ from: BankAccount, _ to: BankAccount, amount: Int) {
    DispatchQueue.global().async {
        from.balance -= amount
    }
    
    DispatchQueue.global().async {
        to.balance += amount
    }
}

let account1 = BankAccount()
let account2 = BankAccount()

transfer(account1, account2, 100)

DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
    print("Account 1 balance: \(account1.balance)")
    print("Account 2 balance: \(account2.balance)")
}