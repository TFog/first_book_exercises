a = [1,2,3]

#Example of a method definition that modifies its argument permenetly
def mutate(array)
    array.pop
end 

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method #{a}"