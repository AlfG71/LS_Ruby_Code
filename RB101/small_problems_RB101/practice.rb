array = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

occurrences = {}

puts array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end