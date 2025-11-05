class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers == ""
    tokens = numbers.split(/,|\n/)
    tokens.map(&:to_i).sum
  end
end
