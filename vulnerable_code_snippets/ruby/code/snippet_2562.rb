# This is a class representing a bank account
class BankAccount
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  # This method simulates a deposit operation
  def deposit(amount)
    sleep rand(1..3) # Simulate some delay
    self.balance += amount
  end
end

# Create a bank account
account = BankAccount.new

# Define a list of amounts to deposit
amounts = [10, 20, 30, 40, 50]

# Create a list to store threads
threads = []

# For each amount, create a thread that deposits into the account
amounts.each do |amount|
  threads << Thread.new { account.deposit(amount) }
end

# Wait for all threads to finish
threads.each(&:join)

# Print the final balance
puts "Final balance: #{account.balance}"