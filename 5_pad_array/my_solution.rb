# U1.W3: Pad an Array!

# I worked on this challenge by myself.

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? - a given array
# What is the output? (i.e. What should the code return?) - the result of running either #pad! or #pad on an array
# What are the steps needed to solve the problem?

=begin

define a method called pad! that accepts a minimum number - a non negative integer - and an optional pad value 
	the pad! method will change the original array input, ie act destructively
	for #pad!, I need to use self as the array. Therefore, when I alter self, it will
		be changing the original array
	I first need to establish that if the minimum number is less than or equal to the array,
		it will just return the same array, unaltered
	If it is not smaller, I need to subtract the array's length from the minumim number. That difference
	is how many 'times' I will add either 'nil' or whatever pad value to the original array.
The only difference in #pad is that I will replace 'self' with a variable, hence it will
be non destructive.			

=end


# 2. Initial Solution
class Array

	def pad!(pad_length, pad_value = nil)
		if pad_length <= self.length
			self
		else
			(pad_length - self.length).times do
				self.push(pad_value)
			end
		self
		end
	end

	def pad(pad_length, pad_value = nil)
		result = self.clone
		if pad_length <= self.length
			result
		else
			(pad_length - self.length).times do
			result.push(pad_value)
			end
		result
		end	
	end
end

# 3. Refactored Solution

class Array

	def pad!(pad_length, pad_value = nil)
		difference = pad_length - self.length
		if pad_length <= self.length
			self
		else
			difference.times do
				self << pad_value
			end
		self
		end
	end

	def pad(pad_length, pad_value = nil)
		result = self.clone
		difference = pad_length - self.length
		if pad_length <= self.length
			result
		else
			difference.times do
			result << pad_value
			end
		result
		end	
	end
end

=begin

Here I just changed a few items of syntax. I changed the 'push' method to the '<<'. That
seems to be a little cleaner. The main thing I did was wrap the 'pad_length - array.length'
calculation into a variable. I'm not sure if I like this or not, but it does clean up the 
'times' iteration in the else statement.

=end

# 4. Reflection 

=begin

What parts of your strategy worked? What problems did you face?

	For me, I'm generally able to work out the problem in plain English. It's turning it into
	pseudocode and code that give me problems. Ultimately, I'm happy with what I came up with. 

What questions did you have while coding? What resources did you find to help you answer them?

  The concept of 'self' was confusing. As a kickstart, I was perusing other cohorts' code, and
	thanks to Ken, I saw him using 'self', and that was great. It's something I feel I have a 
	much better grasp on now.


What concepts are you having trouble with, or did you just figure something out? If so, what?

	The actual algorithm was the easy part for me. Using 'self' and then cloning that into a different
	variable to make it non destructive are things that I figured out.

Did you learn any new skills or tricks?

	self.clone and the concept of self

How confident are you with each of the learning objectives?

	Pretty good!

Which parts of the challenge did you enjoy?

	Figuring it out! Again, thanks, Ken, for the kickstart!

Which parts of the challenge did you find tedious?

	Pseudocode...shocker. I'm getting better though.

=end























