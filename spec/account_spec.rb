require_relative 'spec_helper'


describe Account do
  it "should start with balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe  "#deposit" do
    it "should increase the balance by given amount" do
      expect{ subject.deposit(1000) }.to change{ subject.balance }.by 1000
    end
  end
end
