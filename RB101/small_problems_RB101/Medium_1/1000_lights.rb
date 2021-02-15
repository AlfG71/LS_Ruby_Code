# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:                                            => when        n = 5  

# round 1: every light is turned on                                     =>toggle EVERY switch        (1)
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on                   =>toggle every second switch (2)
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on               =>toggle every third switch  (3)
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on               =>toggle every fourth switch (4)
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on               =>toggle every fifth switch  (5)
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=begin
Problem

  -Write a method that takes one argument 'n' representing the number of switches to be toggled on or off and the amount of times the toggling will occur
  -The switches will intially be all in the OFF position
  -it will iterate over the number of switches counting by the number of the iteration starting at 1
    -. ie. 1,2,3,4...  2,4,6... 3,6,9... 4,8,12... 5,10,15...
  -it will toggle the switches only in each iterated group based on the beginning value of the iterated object (integer)
  -it will return an array with the values for the number of switches that remain on once the iteration has ended	

Example with n = 5 lights:

  round 1: every light is turned on
  round 2: lights 2 and 4 are now off; 1, 3, 5 are on
  round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
  round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
  round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
  The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
  
  With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
	
Data Structures

  Input  - integer
  Output - array

Algorithm

  1) Create a method definition that takes an interger argument
       -def toggle_lights(n)

  2) Create a new array to return the result
       -lights_on = []

  3) Create a new Hash to store n number of key/value pairs          
       -switches = Hash.new('off')

  4) Iterate over switches n number of times
     -on the first iteration toggle every switch to on
     -on subsequent iterations, toggle every nth switch from what it was previously set to changing the values in switches on each iteration

  5) Return lights_on with element values assigned to the keys in switches that have a value of 'on'      

=end

# def toggle_lights(n)
#   switches = Array.new(n, 'off')
#   counter = 0
#   on_switches = []

#   1.upto(n) do |iteration|
#     counter = iteration
#     loop do 
#       switches[counter] == 'off' ? switches[counter] = 'on' : switches[counter] = 'off'
#       counter += iteration
#       break if counter >= n
#     end
    
#   end  

#   switches.each_with_index do |each, index|
#     if switches[index] == 'on'
#     on_switches << index 
#     end               
#   end

#   on_switches
# end

def array_of_lights(number_of_lights)              # Alternate solution with helper methods
  switches = Array.new(number_of_lights, 'off')    # Initializes array of lights in 'off' position
end

def lights_on(lights)                 # Iterates over array appending the 'on' switches to resulting array
  on_switches = []

  lights.each_with_index do |each, index|
    if lights[index] == 'on'
    on_switches << index 
    end               
  end
  on_switches
end

def toggle_lights(number_of_lights)           
  
  lights = array_of_lights(number_of_lights)
  
  counter = 0

  1.upto(lights.size) do |iteration|      # iterates over array toggling switches
    counter = iteration
    loop do 
      lights[counter] == 'off' ? lights[counter] = 'on' : lights[counter] = 'off'
      counter += iteration
      break if counter >= lights.size
    end
    
  end

  lights_on(lights)      # returns resulting array
end  

p toggle_lights(5)
p toggle_lights(10)
p toggle_lights(1000)

# def new_lights(number_of_lights)             #LS solution with hash
#   lights = Hash.new('off')
#   1.upto(number_of_lights) {|number| lights[number] = 'off'}
#   lights
# end

# def toggle_lights(hash, number)
#   hash.each do |key, value|
#     if key % number == 0 
#       hash[key] = (value == 'off') ? 'on' : 'off'
#     end
#   end
# end

# def lights_on(lights)
#   lights.select {|k, v| v == 'on'}
# end

# def lights(number_of_lights)
#   lights = new_lights(number_of_lights)
#   1.upto(lights.size) do |number|
#     toggle_lights(lights, number)
#   end
#   lights_on(lights).keys
# end
