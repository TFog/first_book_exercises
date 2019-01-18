# exercise #1. Checking if lab is in list
#I did it a bit round about to include pans Labyrinth. However the video soltuion
# made things much easier with the inclusion of the case insensitve i.
=begin

arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def has_lab(string)
  if string =~ /lab/i
      puts "#{string} has lab in it"
  else
      puts "#{string} doesn't have lab in it"
  end 
end 

arr.each { |w| has_lab(w)  }


#2. what will the program print to screen?
# first guess? I think either an error, or nothing since .call or yeild wasn't used.

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
#welp, it was nothing. .call made the block run!

#3. excption handling allows the programmer to deal with errors without crashing.

#4 modify the code from #2

def execute(&block)
  block.call #added .call to call the block
end

execute { puts "Hello from inside the execute method!" }

=end

=begin  why does the following code Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end
def execute(block) # change (block) to (&block)
  block.call 
end

execute { puts "Hello from inside the execute method!" }

#was missing & from the method argument. (&block) to fix it. you need that to let
#ruby know you're passing a block as an argument. Otherwise it freaks out.