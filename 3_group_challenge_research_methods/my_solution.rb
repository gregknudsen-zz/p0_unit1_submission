# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(array, thing_to_find)
 	
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(array, number)
	array.map do |element|
  	element.is_a?(Integer) ? element + number : element
	end    
end

def my_hash_modification_method(hash, number)
  hash.update(hash) { |key,value| (value + number) }
end

# Identify and describe the ruby method you implemented. 
=begin

for the array method, I used #map. This will iterate through the array and change each element in place to whatever
	conditions are met in the block. I used the #is_a method to determine whether or not each element was an Integer. 
	If it was, I added the 'number' argument to the integer.
-------------------
for the hash, I tried a few methods - #each_value, #replace. But I eventually found a great post on S.O. that 
gave me the blueprints I needed. #update for the win!!

=end




# Person 3
def my_array_sorting_method(source, thing_to_locate)
  # Your code here!
end

def my_hash_sorting_method(source, thing_to_locate)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
# p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
# p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# # This may be false depending on how your method deals with ordering the animals with the same ages.
# p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
# p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
=begin
What parts of your strategy worked? What problems did you face?

I originally had a clumsy if/else statement testing whether each element was an integer. I figured there had to be a better way, so I googled it, and Stack Overflow
gave me the answer I needed. I also added the ternary statement for efficiency. I also tried #each instead of #map, but I finally figured that out.

What questions did you have while coding? What resources did you find to help you answer them?

the syntax to determine whether or not an element was an integer was interesting. Apparently, all strings convert to '0' as an integer. Stack Overflow again!

What concepts are you having trouble with, or did you just figure something out? If so, what?

The ternary operator was something that usually confuses me. In my research, I found a lot of examples, and now I feel like I have it down pretty good.

Did you learn any new skills or tricks?

the #is_a? method is pretty nice

How confident are you with each of the learning objectives?

Pretty good!

Which parts of the challenge did you enjoy?

I did some exploring on this one. I always had a pretty good idea of how I needed to make it work. It took more time than I'd like, but it will
help me for the next time.

Which parts of the challenge did you find tedious?

Nothing!

=end
