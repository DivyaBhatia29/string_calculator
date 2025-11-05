# spec/string_calculator_spec.rb
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.new.add("")).to eq 0
  end

  it 'returns the number for a single number' do
    expect(StringCalculator.new.add("9")).to eq 9
    expect(StringCalculator.new.add("111")).to eq 111
  end

  it 'adds two numbers separated by comma' do
    expect(StringCalculator.new.add("1,5")).to eq 6
    expect(StringCalculator.new.add("2,3")).to eq 5
  end

  it 'adds any amount of numbers' do
    expect(StringCalculator.new.add("1,2,3,4")).to eq 10
  end

end
