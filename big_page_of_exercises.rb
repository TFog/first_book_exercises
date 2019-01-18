#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
=begin
a = [1,2,3,4,5,6,7,8,9,10]
a.each {|x| puts x }

#2 print out values greater than 5
a = [1,2,3,4,5,6,7,8,9,10]
a.each {|x| puts x if x >= 5}

#3 using select, make a new array with only odd numbers
a = [1,2,3,4,5,6,7,8,9,10]

b = a.select {|n| n.odd? }
p b


#4 append 11 to end, and prepend 0 to begining.
a = [1,2,3,4,5,6,7,8,9,10]

a.unshift(0).push(11)

#5 get rid of 11 and append a 3
a.pop
a.push(3)
#6 remove duplicates.
a.uniq!
p a 



#7. hashes and arrays are both lists, but the largest difference is that
#hashes use unique keys where as arrays use intergers.

#8 creat a hash using both styles.
hash_a = {alpha => 1, omega => 2}
hash_b = {alpha: 1, omega: 2}

#9 perform operations on given hash
h = {a:1, b:2, c:3, d:4}

p h[:b] #1
h[:e] = 5 # 2
h.delete_if {|k,v| v < 3.5} #3


#10 can you have a hash of arrays and an array of hashes? Provide examples.
h_of_a = {a: [1,2,3], b: [4,5,6]}
p h_of_a
a_of_h = [{a: [1,2,3]}, {b: [4,5,6]} ]
p a_of_h
=end
# 11. Without a doubt I enjoy ruby-doc.org the most. Everything is easy to find
#and more importantly it's easy and quick to jump from one thing to another without 
# having to cycle through pages. It's not perfect, like trying to go through various
# parents, but it's the best I've seen after look at 2 other APIs.

#12 move data from array into the empty hash for proper person
=begin
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1] 
contacts["Joe Smith"][:phone] = contact_data[0][2] 
contacts["Sally Johnson"][:email] = contact_data[1][0] 
contacts["Sally Johnson"][:address] = contact_data[1][1] 
contacts["Sally Johnson"][:phone] = contact_data[1][1] 

#13 access joes email and sallys phone number
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]
#gonna copy the provided solution since it's better
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#14 loop over contacts hash values and populate them with the correct data.
#only need to do joes, but bonus points for both. AHHHHHHHHHH!!!! This is hard.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

forms.each {|x| 
    contacts["Joe Smith"][x] = contact_data[0].shift
}
p contacts
=end
# below is the given solution abd the bonus solution
=begin
contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end


contacts.each_with_index do |(name, hash), idx|
    fields.each do |field|
        hash[field] = contact_data[idx].shift
    end
end

p contacts


#15 delete all words that begin with "s"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|y| y.start_with?("s")}
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|w| w.start_with?("s") || w.start_with?("w")}
p arr 
# better solution: arr.delete_if {|w| w.start_with?("s", "w")


#16 break into a new array of single words at each index
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map {|x| x.split(' ')}
b.flatten!
p b
=end
# 17 guess the output! guessing not the same...oh fudge! they were!
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end


