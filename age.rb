#determins age of person based off of selected age. Side note, it works
puts "How old are you currently? Intergers only"
age = gets.chomp.to_i
puts "How many years are you specificly looking for"
time= gets.chomp.to_i

result = age + time
results = 
years = [10,20,30,40]

puts "In #{time} years you will be #{result} years old!"
puts "Also, I must follow the direcitons so here's the results they wanted"
years.each do |x|
    results = x + age
    puts "in #{x} years you will be: \n #{results}"
end