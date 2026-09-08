/// A simple Dart console program for managing bank accounts.

class BankAccount {

  String accountHolderName;

  String accountNumber;

  double _balance; // Private variable: can only be accessed inside this class.



  /// Constructor to initialize a bank account.

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);



  /// Adds [amount] to the account balance.

  void deposit(double amount) {

    if (amount <= 0) {

      print('Deposit amount must be greater than zero.');

      return;

    }

    _balance += amount;

  }



  /// Withdraws [amount] only when enough money is available.

  void withdraw(double amount) {

    if (amount <= 0) {

      print('Withdrawal amount must be greater than zero.');

    } else if (amount > _balance) {

      print('Insufficient balance. Withdrawal cancelled.');

    } else {

      _balance -= amount;

    }

  }



  /// Returns the private balance through a method.

  double getBalance() {

    return _balance;

  }



  /// Displays the account details.

  void displayAccountInfo() {

    print('Account Holder: $accountHolderName');

    print('Account Number: $accountNumber');

    print('Balance: ${_formatMoney(_balance)}');

  }



  String _formatMoney(double amount) {

    return amount % 1 == 0 ? amount.toInt().toString() : amount.toStringAsFixed(2);

  }

}



void main() {

  // Creating two BankAccount objects.

  BankAccount rahim = BankAccount('Rahim', '1001', 5000);

  BankAccount karim = BankAccount('Karim', '1002', 8000);



  rahim.displayAccountInfo();



  rahim.deposit(2000);

  print('\nAfter Deposit: Balance: ${rahim.getBalance().toInt()}');



  rahim.withdraw(1500);

  print('After Withdrawal: Balance: ${rahim.getBalance().toInt()}');



  print('');

  karim.displayAccountInfo();

}