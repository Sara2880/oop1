class BankAccount {
  int accountID;
  double balance;

  BankAccount.withBalance(double x){
    balance = x;
  }

  BankAccount() {
    balance = 0;
  }
  void deposite(double amount){
    balance+=amount;
  }
  void withdraw(double amount){
    if(balance >= amount){
      balance-=amount;
    }
    else{
      print("insufficient");
    }
  }


}

void main(){
  BankAccount acc=BankAccount.withBalance(2000);
  acc.deposite(500);
  acc.withdraw(300);
  print(acc.balance);
}