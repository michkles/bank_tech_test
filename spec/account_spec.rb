require_relative 'spec_helper'


describe Account do
  it "should start with balance of 0" do
    expect(subject.balance).to eq 0
  end
end
