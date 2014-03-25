# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? - an array of numbers
# What is the output? (i.e. What should the code return?) - an average of those numbers
# What are the steps needed to solve the problem?

=begin

1 - add the total of all the numbers in the array
2 - return the average of all the elements of the array
3 - make statement that correlates to each letter grade

=end

# 2. Initial Solution

def get_grade(avg_grades)
	grade_total = avg_grades.inject { |sum, x| sum + x }
	avg_grade = grade_total / avg_grades.count

	case 
	when avg_grade >= 90
		'A'
	when avg_grade >= 80
		'B'
	when avg_grade >= 70
		'C'
	when avg_grade >= 60				
		'D'
	else
		'F'
	end		
end


# 3. Refactored Solution

# => looking at it, I would not refactor. I thought about using an if/else statement, but
# => that would have been too many 'elsif's, so a case statement made sense.
# => (10 minutes later)
# => LIES! See my refactored solution below:

def get_grade(grades)
	grade_sum = grades.inject { |sum, x| sum + x }
	average = grade_sum / grades.count

	case 
	when average >= 90
		'A'
	when average >= 80
		'B'
	when average >= 70
		'C'
	when average >= 60				
		'D'
	else
		'F'
	end		
end

# => changed the variable name from 'avg_grades' to 'average' to avoid any possible confusion with the
# => method's argument. 
# => Also, changed name of the array to 'grades' from 'avg_grades'. The array contains
# => the grades, not the averages! Also changed the name of 'grade_total' to 'grade_sum' for clarity purposes.



# 4. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
	I started to use an if/else statement, but then realized quickly that the case statement was the better choice

What questions did you have while coding? What resources did you find to help you answer them?
	Just a quick syntax refresher for inject.

What concepts are you having trouble with, or did you just figure something out? If so, what?
	this was pretty straight forward.

Did you learn any new skills or tricks?
	Not this time.

How confident are you with each of the learning objectives?
	I feel good about this.

Which parts of the challenge did you enjoy?
	Realizing that I had to create other variable to hold data that I needed to salve the problem.

Which parts of the challenge did you find tedious?
	Nothing, really!
=end
