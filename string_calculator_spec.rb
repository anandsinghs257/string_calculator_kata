require 'rspec'
require_relative 'string_calculator'

RSpec.describe 'StringCalculator' do
  describe '#add' do
    context 'with valid input' do
      it 'returns the sum of numbers separated by commas and new lines' do
        expect(add("1\n2,3")).to eq(6)
      end

      it 'returns 0 for an empty string' do
        expect(add("")).to eq(0)
      end

      it 'returns the number itself for single number input' do
        expect(add("1")).to eq(1)
      end

      it 'returns the sum of two numbers separated by comma' do
        expect(add("1,5")).to eq(6)
      end
    end
  end
end

