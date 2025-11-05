class NegativeNumbersError < StandardError; end

class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers == ""

    tokens = if numbers.start_with?("//")
              header, rest = numbers.split("\n", 2)
              delim = header[2]
              rest.split(delim)
            else
              numbers.split(/,|\n/)
            end

    ints = tokens.map(&:to_i)
    negatives = ints.select { |n| n < 0 }
    unless negatives.empty?
      raise NegativeNumbersError, "negative numbers not allowed #{negatives.join(',')}"
    end
    ints.sum
  end

end
