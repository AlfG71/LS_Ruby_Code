# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

=begin
  P  (understand the Problem)
    -we have a multidimetional array populated with sub_hashes 
    -each hash has a total of 3 key-value pairs
    -inside the hashes the keys are symbols and the values are strings
    -we need to sort the hashes inside the array based on the value of each symbol named :published

  E  (Examples)
		   books = [
		   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
		   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
		   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
		   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
		    ]

		    will output:
		   books = [
		   	{title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
		   	{title: 'Ulysses', author: 'James Joyce', published: '1922'},
		   	{title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
		    {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
		    ]		    

  D  (Data structures)
      Input:
        -array 
        -hashes
      Output:
        -array
        -hashes

  A  (Algorithm)
      -access each sub-hash from the outer array with a method
      -access each key/symbol :published within each sub-hash
      -compare the value of each :published symbol
      -sort the sub-hashes by the comparison of the :publsihed values

  C  (Code)

=end

books = [
		   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
		   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
		   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
		   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
		    ]

		    p books.sort_by {|book| book[:published].to_i}
		    
		    	