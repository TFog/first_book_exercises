#did number 1 on scrap paper, onto numbers 2+

#number 2. capitalizes given strings longer than 10 characters
=begin def string_maximizer(s)
    
    if s.length >= 10
        puts "#{s.upcase!}"
        
    else
        "this isn't what I asked for"
    end
    
end
puts "What's your string? 10 chars minimum"
s = gets.chomp.to_s
string_maximizer(s)
=end

#number 3. number informer. BUG: doesn't handle for non-numberic strings
#converts a-z words to 0. I can fix, but that requires copying answers from SO
=begin
puts "Please give me a number."
num = gets.chomp.to_i


if num <= 50 && num >= 0
    puts "#{num} is between 0 and 50!"
elsif num >= 51 && num <= 100
    puts "#{num} is between 51 and 100!"
elsif num >100
    puts "#{num} is larger than 100! like most numbers..."
else 
    "what?"
end


1. '4' == 4 ? puts("TRUE") : puts("FALSE")
#false
2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end
# "did you get is right?"
3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end
#Alright now!
=end
#exercise num 3 re-done in a case statment. I had trouble so I looked up the answer
# I really liked this solution since I didn't know about the 0..50 kind of solution
# I wonder if you can use other kinds of ranges for these things. is there a alphabet kind?
=begin
def eval_num(num)
    case num
    when 0..50
        puts "#{num} is between 0 and 50"
    when 51..100
        puts "#{num} is between 51 and 100"
    else
        if num < 0
            puts "You can't enter a negative number"
        else
            puts "#{num} is above 100"
        end
    end
end

puts "Please enter a number."
num = gets.chomp.to_i

eval_num(num)
=end

#number 6. bug fixing.
=begin
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end #added an end here
end

equal_to_four(5)
=end