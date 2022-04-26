require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def to_one_hundred(number)
    return 100 - number
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe "#subtract" do
    it "should return the result of the first number minus the second number" do
      calculator = Calculator.new
      result = calculator.subtract(5, 2)
      expect(result).to eq(3)
    end

    it "should return the sum if the second number is a negative number" do
      calculator = Calculator.new
      result = calculator.subtract(5, -3)
      expect(result).to eq(8)
    end
  end

  describe "#multiply" do
    it "should return the product of the two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(4, 6)
      expect(result).to eq(24)
    end
  end

  describe "#divide" do
    it "should return how many times the divisor can go into the dividend" do
      calculator = Calculator.new
      result = calculator.divide(24, 6)
      expect(result).to eq(4)
    end
  end

  describe "#square" do
    it "should return the number multiplied by itself" do
      calculator = Calculator.new
      result = calculator.square(3)
      expect(result).to eq(9)
    end
  end

  describe "#power" do
    it "should return the number multiplied by itself the exponent times" do
      calculator = Calculator.new
      result = calculator.power(2, 3)
      expect(result).to eq(8)
    end
  end

  describe "#to_one_hundred" do
    it "should return the distance from number to 100" do
      calculator = Calculator.new
      result = calculator.to_one_hundred(25)
      expect(result).to eq(75)
    end
  end

end