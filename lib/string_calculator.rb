class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers == ""
    numbers.split(',').map(&:to_i).sum
  end
end
