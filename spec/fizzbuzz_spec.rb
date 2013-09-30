require_relative '../lib/fizzbuzz.rb'

describe Fizzbuzz do

  before do
    @fizzbuzz = Fizzbuzz.new()
  end

  describe "sunny day tests" do
    it "Fizzes up to 2 correctly" do
      @fizzbuzz.go(2).should == ["1","2"]
    end
    it "Fizzes up to 3 correctly" do
      @fizzbuzz.go(3).should == ["1","2","Fizz"]
    end
    it "Fizzes up to 5 correctly" do
      @fizzbuzz.go(5).should == ["1","2","Fizz", "4", "Buzz"]
    end
    it "Fizzes up to 15 correctly" do
      @fizzbuzz.go(15).should == ["1","2","Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
    end
  end
end
