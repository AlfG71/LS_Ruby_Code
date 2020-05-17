# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

names = ['Alf', 'Alexandra', 'Nina', 'Fonche']

names.each_with_index {|name, idx| puts idx + "#{name}"}

