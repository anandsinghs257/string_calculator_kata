require 'rspec'
require_relative 'string_calculator'

RSpec.describe 'StringCalculator' do
  before :each do
		@calculator = StringCalculator.new
	end
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(@calculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(@calculator.add("5")).to eq(5)
    end

    it "returns the sum of two numbers separated by a comma" do
      expect(@calculator.add("1,3")).to eq(4)
    end

    it "returns the sum of multiple numbers separated by commas" do
      expect(@calculator.add("1,2,3,4,5")).to eq(15)
    end

    it "returns the sum of numbers separated by new lines" do
      expect(@calculator.add("1\n2,3")).to eq(6)
    end

    it "returns the sum of numbers separated by a custom delimiter" do
      expect(@calculator.add("//;\n1;2")).to eq(3)
    end

    it "throws an exception for negative numbers" do
      expect { @calculator.add("1,-2,3,-4") }.to raise_error(ArgumentError, "negative numbers not allowed -2,-4")
    end
  end
end

