# exercise 1. It's a bit different from the solution. I'll include their solution.
=begin
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_squad = family.select do |k,v|
    k == :brothers || k == :sisters
end

p immediate_squad.to_a.flatten
# Indented solution: arr = immediate_squad.values.flatten, p arr

#exercise 2. Merge it bby
#this is an example of merge without the bang!
a = {taco: "tuesday", mellon: "monday", tomato: "tuesday" }
b= {fajita: "friday", sauce: "saturday", screaming: "sunday"}

p a.merge(b)
# neither a or b has mutated
p a
p b

#This demos the merge! with a bang!
a = {taco: "tuesday", mellon: "monday", tomato: "tuesday" }
b= {fajita: "friday", sauce: "saturday", screaming: "sunday"}

p a.merge!(b)
#note how hash a has mutated, but b did not.
p a
p b


# exercise 3 print all keys, then values, then both!
#ah, i messed up. I'm keeping my solution but going to also do the suggested one.
pets = { dog: "kylo", cat: ["yang", "yin"]}
p pets.keys
p pets.values
p pets

pets = { dog: "kylo", cat: ["yang", "yin"]}
pets.each_key {|k| puts k}
pets.each_value {|v| puts v}
pets.each { |k,v| puts "my #{k}s name is #{v}."}


#exercise 4. accessing a name
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]


#exercise 5 finding a specific value
person = {name: 'Bob', occupation: 'Web developer', hobbies: 'Painting'}
puts "Who or what?"
selector = gets.chomp.capitalize!
if person.has_value?(selector)
    p "#{selector} is indeed here"
else
    p "#{selector} is not here. wtf?"
end
=end

#example 6. Anagrams? Holy crap. what a jump in difficulty.
#I gave up in the end without making much progress, sadly.
#Part of me feels cheated, the other part of me is glad I learned stuff.
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'fizz']
maybe = {}
words.each do |word|
    key = word.split('').sort.join
    if maybe.has_key?(key)
        maybe[key].push(word)
    else
        maybe[key] = [word]
    end
end

maybe.each_value do |v|
    puts "------"
    p v
    
end
    

