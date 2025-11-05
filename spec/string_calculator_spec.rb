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

end
