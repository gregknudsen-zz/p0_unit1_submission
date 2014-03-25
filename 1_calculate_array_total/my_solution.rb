# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Danielle.

# 1. Pseudocode

# => Total (Danielle driver)

# => Define as a method
#	 Create a method called 'total'
# => Requires a single argument
# => In 'total', give a single argument
# => Return the correct sum of 'array_1'
# => Create a method that finds sum of all elements in 'array_1' and 'array_2'

# => Initial Solution

def total(array)
  array.inject do |sum,x| sum + x 
  end
end


#-----------------------------------------------------------------------------

# => Sentence Maker (Greg drives)

# => Pull each element out of array, 
# => convert each element to string
# => put all elements together to form one string


# 2. Initial Solution

def sentence_maker(array)
	array.join(" ").capitalize + '.'
end



# 3. Refactored Solution

# => changed 'do..end' to '{}' for sleeker solution

def total(array)
	array.inject { |sum,x| sum + x }
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
	# => Danielle and I were (and continue to be) confused by how to actually write our pseudocode.
	# => We're not sure whether to think of it as a summary of the problem and possible solutions or something
	# => that more resembles code.

# What questions did you have while coding? What resources did you find to help you answer them?
	# => We looked up the 'join' method just make sure how the parameters worked. Ruby-Docs worked great!

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	# => For this exercise, everything was pretty straight forward.

# Did you learn any new skills or tricks?
	# => Not for this exercise.

# How confident are you with each of the learning objectives?
	# => Pretty good so far.

# Which parts of the challenge did you enjoy?
	# => Working with Danielle was fun! Also enjoy seeing more and more tests pass.

# Which parts of the challenge did you find tedious?
	# => I'm still getting used to the pseudocode. I know it's very important, so I'll continue to
	# => work at it.


