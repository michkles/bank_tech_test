class Account

  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(date, amount)
    @balance += amount
    add_transactions(date, amount, type=:deposit)
  end

  def withdraw(date, amount)
    @balance -= amount
    add_transactions(date, amount, type=:credit)
  end


  private
    def add_transactions(date, amount, type)
      @transactions.push({ date: date, amount: amount, balance: balance, type: type})
    end
end
