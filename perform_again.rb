loop do
    puts "Do you want to do that again?"
    answer = gets.chomp
    if !["Y", "YES"].include? answer.upcase
        break
    end
end
#I modified the exercise a bit. I didn't like the single response.
#dang, this took my longer than I care to admit to figure out.