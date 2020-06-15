def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
      p arr
    end
  end
  arr
end

p remove_evens!([1,1,2,3,4,6,8,9])