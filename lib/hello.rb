def hello_t(array)
  
  i = 0
  while i < array.length 
  yield array[i]
  i = i + 1 
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