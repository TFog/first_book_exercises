x = gets.chomp.to_i

while x  >= 0
  puts x
  x -= 1 
end

puts "done!"

until x < 0
  puts x
  x -= 1
end

puts "done!"