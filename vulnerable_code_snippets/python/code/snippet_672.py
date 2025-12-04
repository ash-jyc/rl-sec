import threading

class BankAccount:
    def __init__(self):
        self.balance = 0

    def deposit(self, amount):
        current_balance = self.balance
        # Simulate some time-consuming operation
        for _ in range(10000000):
            pass
        self.balance = current_balance + amount

def perform_transactions():
    account = BankAccount()
    threads = []
    for _ in range(1000):
        t = threading.Thread(target=account.deposit, args=(1,))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()
    print(f"Final balance: {account.balance}")

perform_transactions()