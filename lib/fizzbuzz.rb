class ModFormatter
  def initialize(mod, say)
    @mod = mod
    @say = say
  end

  def format(number)
    isDivisible = ((number % @mod) == 0)
    return @say if isDivisible
    return ""
  end
end

class Fizzbuzz
  def initialize
    @formatters = []
    @formatters << ModFormatter.new(3, "Fizz")
    @formatters << ModFormatter.new(5, "Buzz")
  end

  def go (number) 
    result = []
    (1..number).each do |step|
      result << format(step)
    end
    return result
  end

  private

  def format (number)
    result = apply_formatters("", number)
    result = number.to_s if (result.size == 0)
    return result
  end

  def apply_formatters(startString, number)
    @formatters.each do |formatter|
      startString << formatter.format(number)
    end
    return startString
  end
end
