class NegativeNumbersError < StandardError; end

class StringCalculator
  CUSTOM_DELIM_PATTERN = %r{\A//(.+)\n(.*)\z}m

  def add(numbers)
    return 0 if numbers.nil? || numbers.strip == ""

    delim_regex, nums = if numbers.match(CUSTOM_DELIM_PATTERN)
                         delim_part = Regexp.last_match(1)
                         # simple support for delimiter specified as [delim] or single char
                         delim = if delim_part.start_with?('[') && delim_part.end_with?(']')
                                   Regexp.escape(delim_part[1..-2])
                                 else
                                   Regexp.escape(delim_part)
                                 end
                         [Regexp.new(delim), Regexp.last_match(2)]
                       else
                         [/,|\n/, numbers]
                       end

    tokens = nums.split(delim_regex).map(&:strip).reject(&:empty?)
    ints = tokens.map(&:to_i)
    negatives = ints.select { |n| n < 0 }
    raise NegativeNumbersError, "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

    ints.sum
  end
end
