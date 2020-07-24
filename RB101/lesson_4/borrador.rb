def joinor(brd, punctuation = ' ', preposition = 'or')
  brd[-1] = preposition + ' ' + brd[-1].to_s
  # if brd.length < 2
  #   brd.join(punctuation = ', ')
  # else
  brd.join(punctuation)
  # end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
