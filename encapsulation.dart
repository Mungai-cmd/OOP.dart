class BankAccount {
  // Private variable (encapsulation)
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter method
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient funds or invalid amount.');
    }
  }
}

void main() {
  var account = BankAccount(1000.0);
  account.deposit(200.0);
  account.withdraw(150.0);
  print('Current Balance: ${account.balance}');
}
