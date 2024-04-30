class StringCalculator
  def initialize
    @delimiter = ','
  end

  def add(numbers)
    parse_input(numbers)
    raise ArgumentError, "negative numbers not allowed #{@negative_numbers.join(',')}" if @negative_numbers.any?
    
    @numbers.sum
  end

  private

  def parse_input(input)
    if input.start_with?("//")
      @delimiter = input[2]
      input = input[4..-1]
    end

    input = input.gsub("\n", @delimiter)

    @numbers = input.split(@delimiter).map(&:to_i)
    @negative_numbers = @numbers.select { |num| num < 0 }
  end
end

