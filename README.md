##Bank tech test:##

#Installation:#

1. https://github.com/michkles/bank_tech_test.git
2. In your terminal type: cd bank_tech_test
3. Run irb

#Usage:#

1. require './lib/account.rb'
2. account = Account.new
3. account.deposit('01/01/2012', 5000)
4. account.withdraw('01/01/2012', 1000)
5. account.balance




#Requirements:#

You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).


#Acceptance criteria:#

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
