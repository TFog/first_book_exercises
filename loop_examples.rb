#example 2.
=begin
x = 0

while x != "STOP"
  puts "HEY NOW, YOU'RE A ROCK STAR!"
  puts "Keep going? type 'STOP' to stop"
  x = gets.chomp.upcase!

end
=end
=begin
x = [1,2,3,4,5]
z = 0
x.each { |y|
   puts "#{z}: #{y}"
   z += 1
}
=end
#4 coutning down with recursion
=begin
def count_down(n)
   puts "#{n}"
   n -= 1
   if n > 0
      count_down(n)
   end
end
count_down(30)
=end