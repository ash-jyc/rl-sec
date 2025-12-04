import logging

class BankAccount:
    def __init__(self, balance):
        self.balance = balance

    def withdraw(self, amount):
        try:
            if amount > self.balance:
                raise ValueError("Insufficient funds")
            self.balance -= amount
        except Exception as e:
            logging.error(e)

bank_account = BankAccount(1000)
bank_account.withdraw(2000)