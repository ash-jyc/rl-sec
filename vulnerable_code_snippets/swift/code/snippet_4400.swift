// This is a simple class representing a bank account
class BankAccount {
    var balance: Double = 0.0
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) -> Double? {
        guard balance >= amount else { return nil }
        
        balance -= amount
        return balance
    }
}

// This is a class representing a person who has a bank account
class Person {
    let name: String
    var account: BankAccount?
    
    init(name: String) {
        self.name = name
    }
    
    func openAccount() {
        account = BankAccount()
    }
    
    func closeAccount() {
        account = nil // This is where the vulnerability is, we have lost reference to the BankAccount instance
    }
}

// Usage of above classes
var john = Person(name: "John")
john.openAccount()
john.account?.deposit(amount: 1000)
print(john.account?.balance ?? 0) // This will print 1000
john.closeAccount()
print(john.account?.balance ?? 0) // This will print 0, but since the account was closed, it should be nil