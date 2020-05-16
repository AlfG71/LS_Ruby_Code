#The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

=begin
  P (Understand the Problem)

  -Write a method for each of the arrays so that each method returns a random value from the appropriate array

  -Write another method that combines both values into a sentence and returns it when the mehtod is invoked

  E (Examples)
  
  -George went walking today!
  -Dave went running today!
  -Jessica went cycling today!

  D (Data structure/Syntax)

    -Input:
      -arrays
      -methods

    -Output:
      -strings

  A (Algorithm)
    -declare array of names
    -declare array of activities
    -define method that takes one argument and returns an element at random from the array
    -define a second method that takes one argu,ment and returns an element at random from the second array
    -define a third method that takes the return values from the two other methods 
    -the third method return value is a sentence that includes each value from each of the first two methods.
    -invoke the third method 

=end


names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
	activities.sample
end

def sentence(name, activity)
  name + " went " + activity + " today!"
end

# puts name(names)
# puts activity(activities)

puts sentence(name(names), activity(activities))


# Example output:

# George went walking today!