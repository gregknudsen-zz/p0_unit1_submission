# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked 
#    What I learned from this solution

	
#	Short and sweet. That's not always the best way to go, but in case, it's also very
#	readable. A win-win! Very nice.




# Copy solution here:

# class Array 
#     def pad!(pad_length, pad_value = nil)
#         self << pad_value until self.length >= pad_length
#         self
#     end
     
#     def pad(pad_length, pad_value = nil)
#         new_array = self.clone 
#         new_array << pad_value until new_array.length >= pad_length
#       new_array 
#     end
# end 






# 2. Second Person's solution I liked
#    What I learned from this solution

# I hadn't known about the inline #times method. Pretty slick!

# Copy solution here:

# class Array 
#   def pad(min_size, pad_value = nil)
#     output = self.clone
#     difference = min_size - output.length
#     difference.times { output << pad_value } if difference >= 0
#     output      
#   end
   
#   def pad!(min_size, pad_value = nil)
#     difference = min_size - self.length
#     difference.times { self << pad_value } if difference >= 0
#     self
#   end
# end





# 3. My original solution:

# class Array

# 	def pad!(pad_length, pad_value = nil)
# 		difference = pad_length - self.length
# 		if pad_length <= self.length
# 			self
# 		else
# 			difference.times do
# 				self << pad_value
# 			end
# 		self
# 		end
# 	end

# 	def pad(pad_length, pad_value = nil)
# 		result = self.clone
# 		difference = pad_length - self.length
# 		if pad_length <= self.length
# 			result
# 		else
# 			difference.times do
# 			result << pad_value
# 			end
# 		result
# 		end	
# 	end
# end



# 4. My refactored solution:

class Array
	def pad!(pad_length, pad_value = nil)
		self << pad_value until self.length >= pad_length # very elegant!
		self
	end

	def pad(pad_length, pad_value = nil)
		result = self.clone
		difference = pad_length - result.length
		difference.times { result << pad_value } if difference >= 0 # again, like the sleekness here
		result
	end
end



# 5. Reflection

=begin

The beauty of programming...for every programmer, there's a different way to do something.
I found some pretty cool expressions in these two solutions, and I know there are more ways to
do it. I was actually toying with a ternary operator that works as well. For the above solutions,
I just wanted to mix the two up. I would most likely use the 1st solution I chose for both methods.
Fun stuff!


=end