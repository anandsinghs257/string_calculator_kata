require 'rspec'
require_relative 'string_calculator'

RSpec.describe 'StringCalculator' do
  it 'returns 0 for an empty string' do
    expect(add('')).to eq(0)
  end

  it 'returns the number itself if only one number is provided' do
    expect(add('5')).to eq(5)
  end

  it 'returns the sum of two numbers' do
    expect(add('1,2')).to eq(3)
  end

  it 'returns the sum of multiple numbers' do
    expect(add('1,2,3,4,5')).to eq(15)
  end

  it 'returns the sum even if numbers are separated by spaces' do
    expect(add('1, 2, 3')).to eq(6)
  end

  it 'returns the sum when numbers are wrapped in quotes' do
    expect(add('"1","2","3"')).to eq(6)
  end

  it 'ignores non-numeric characters' do
    expect(add('1,a,2')).to eq(3)
  end
end
