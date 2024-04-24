def add(numbers)
  return 0 if numbers.empty?

  numbers.split(',').map(&:to_i).sum
end

puts add("")    # Output: 0
puts add("1")   # Output: 1
puts add("1,5") # Output: 6
