def add(numbers)
  return 0 if numbers.empty?

  # Check for invalid input containing comma followed by newline
  raise ArgumentError, "Invalid input" if numbers.match?(/,\n/)

  # Extract numbers using regex
  nums = numbers.scan(/\d+/)

  # Sum up the numbers
  nums.map(&:to_i).sum
end

print "Enter numbers separated by commas or new lines: "
input = gets.chomp.gsub('\n', "\n") # Replace literal '\n' with newline character

begin
  puts add(input)
rescue ArgumentError => e
  puts e.message
end
