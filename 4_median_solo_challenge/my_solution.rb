# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? - an array of numbers or strings
# What is the output? (i.e. What should the code return?) - a number corresponding to the correct median of the array
# What are the steps needed to solve the problem?

=begin

Create a method 'median' that accepts an array as its parameter
first, sort the array
second, determine if the array has an odd number of elements
	if it does, divide the length of the array by 2
		then add one to that number. That number is the index that is our median
	if the array has an even number of elements
		same as before, divide the length of the array by 2. Using that number as the index of the array
		we will add that number and the following index and divide by 2 to get the resulting median
=end


# 2. Initial Solution

def median(array)
	array.sort!
	index_position = array.length / 2.to_f
	if array.length.odd?
		odd_result = array[index_position]
	else
		index_average = array[index_position] + array[index_position - 1]
		even_result = index_average / 2.to_f
	end
end

#puts median([1,2,3,4])

# 3. Refactored Solution

def median(array)
	sorted_array = array.sort
	middle_index = sorted_array.length / 2
	if sorted_array.length.odd?
		odd_result = sorted_array[middle_index]
	else
		middle_2_index_sum = sorted_array[middle_index] + sorted_array[middle_index - 1]
		even_result = middle_2_index_sum.to_f / 2
	end
end

# 4. Reflection 

=begin

What parts of your strategy worked? What problems did you face?

	The most confusing part for me was figuring out how to handle the arrays with even numbers. It didn't take me that long to work it out, though.

What questions did you have while coding? What resources did you find to help you answer them?

	I guess I'm always asking how much to abstract things. When does creating a variable for too many things start to interfere with the readability.
	Variable names are also always a concern. In my refactored solution, I tried to address that.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	
	I think I'm doing ok for this challenge. I just had to look up exactly what median means. I also am glad I was able to figure this out, since
	I couldn't quite get it in the JS exercise in week 2.

Did you learn any new skills or tricks?

	Not this challenge.

How confident are you with each of the learning objectives?

	Good!

Which parts of the challenge did you enjoy?

	Seeing green never gets old. Kind of related to what I said above, I really enjoy seeing what levels of abstraction I can attain. Still a work in progress.

Which parts of the challenge did you find tedious?

	Nothing that I can think of.

=end

