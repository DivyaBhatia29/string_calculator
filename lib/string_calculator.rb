class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers == ""

    if numbers.start_with?("//")
      header, rest = numbers.split("\n", 2)
      delim = header[2] # simplest: single char after //
      tokens = rest.split(delim)
    else
      tokens = numbers.split(/,|\n/)
    end

    tokens.map(&:to_i).sum
  end

end
