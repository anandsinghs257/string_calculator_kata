

def add(numbers)
  return 0 if numbers.empty?

  numbers.gsub('"', '').split(',').map(&:to_i).sum
end


print "Enter numbers separated by commas: "
input = gets.chomp

puts add(input)
