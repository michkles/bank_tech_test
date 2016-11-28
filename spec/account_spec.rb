require_relative 'spec_helper'


describe Account do
  it "should start with balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe  "#deposit" do
    it "should increase the balance by given amount" do
      expect{ subject.deposit('01/01/2017', 1000) }.to change{ subject.balance }.by 1000
    end

    it "should be stored as deposit in transactions" do
      subject.deposit('01/01/2017', 1000)
      expect(subject.transactions[0]).to have_value(:deposit)
    end
  end

  describe  "#withdraw" do
    it "should decrease the balance by given amount" do
      expect{ subject.withdraw('01/01/2017', 500) }.to change{ subject.balance }.by -500
    end

    it "should be stored as credit in transactions" do
      subject.withdraw('01/01/2017', 500)
      expect(subject.transactions[0]).to have_value(:credit)
    end
  end

end
