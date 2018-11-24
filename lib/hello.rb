def hello_t(array)
  if block_given?
    i = 0
    while i < array.length
      yield(array[i])
      i = i + 1
    end
    array
  else
    puts "Hey! No block was given!"
  end
end
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

# set a ccounter variable, i = 0 
#start our while loop and tell it to execute code b/w while and end as long as i i sless than the length of the array 
#we increment the value of i inside the while loop 
# the first time through our while loop i = 0, then i = 1 and so on until i = index number of the last item in the array 
#the bracket method grabs the value of each succesive index element as we go through our while loop yielding each to a block
#call method with the array of names as an argument and a block that accepts a |name| parameter 
#If the passed in name begins with the letter "T" the block puts out a greeting