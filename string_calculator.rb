def add(numbers)
  return 0 if numbers.empty?

  # Remove surrounding quotes if present
  numbers = numbers[1..-2] if numbers.start_with?('"') && numbers.end_with?('"')

  # Check for invalid input: comma followed by newline within quotes
  if numbers.include?('\n,') || numbers.include?(',\n')
    raise ArgumentError, "Invalid input: #{numbers}"
  end

  # Replace occurrences of "\n" within quotes with ","
  numbers.gsub!('\n', ',') if numbers.include?('\n')

  # Split by comma and sum
  numbers.split(",").map(&:to_i).sum
end

print "Enter numbers separated by commas or new lines: "
input = gets.chomp

begin
  puts add(input)
rescue ArgumentError => e
  puts e.message
end
