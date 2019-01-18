=begin
arr = [1,3,5,7,9,11]
number = 3

arr.each {|x| 
    if x == number
        puts "yes"
    end
    
}

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names
=end
 #7
arr = [1,2,3,4,5,6]
arr2 =
arr2 = arr.map {|x| x += 2 }

p arr
p arr2

    



