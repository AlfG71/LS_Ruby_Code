def fun_with_ids
  a_outer = 42            #=> 42
  b_outer = "forty two"   #=> "forty two"
  c_outer = [42]          #=> [42] 
  d_outer = c_outer[0]    #=> 42

  a_outer_id = a_outer.object_id  #=> 85 (same as d_outer_id)
  b_outer_id = b_outer.object_id  #=> a string object 
  c_outer_id = c_outer.object_id  #=> an array object
  d_outer_id = d_outer.object_id  #=> 85 (same as a_outer_id)

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
                   #=>  42                   #=> 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
                   #=>  "forty two"          #=> a string object 
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
                   #=>  "[42]"               #=> an array object
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
                   #=>  42                   #=> 85
  puts

  1.times do
    a_outer_inner_id = a_outer.object_id  #=> 85
    b_outer_inner_id = b_outer.object_id  #=> a string object 
    c_outer_inner_id = c_outer.object_id  #=> an array object
    d_outer_inner_id = d_outer.object_id  #=> 85

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
                         #=> 85                                 #=> 85
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
                         #=> a string object                    #=> a string object
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
                         #=> an array object                    #=> an array object
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
                         #=> 85                                 #=> 85
    puts

    a_outer = 22                 #=> 22
    b_outer = "thirty three"     #=> a new string object
    c_outer = [44]               #=> a new array object
    d_outer = c_outer[0]         #=> 44

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."                       #=> 22                    #=> 85                    #=> 45
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."                  #=> "thirty three"        #=> a string object  #=>new string object
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."                       #=> [44]       #=>an array object  #=>anew array object       
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."                       #=> 44                    #=> 85                    #=> 89
    puts


    a_inner = a_outer       #=> 22
    b_inner = b_outer       #=> "thirty three"
    c_inner = c_outer       #=> [44]
    d_inner = c_inner[0]    #=> 44

    a_inner_id = a_inner.object_id  #=> 45
    b_inner_id = b_inner.object_id  #=> new string object
    c_inner_id = c_inner.object_id  #=> new array object
    d_inner_id = d_inner.object_id  #=> 89

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
                     #=> 22                    #=> 45                                    #=> 45
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
                     #=> "thirty three"     #=> a new string object                  #=> new string object
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
                     #=> [44]               #=> a new array object               #=> a new array object
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
                     #=>   44                    #=> 89                                    #=> 89
    puts
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
	                 #=> 42                      #=> 85                      #=>85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
	                 #=>"forty two"            #=>a string object          #=>same string object
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
	                 #=>  [42]                 #=>an array object         #=>same array object
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
	                 #=>  42                     #=> 85                      #=>85
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
                   #=>                       #=>                       #=>
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
                   #=>                       #=>                       #=>
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
                   #=>                       #=>                       #=>
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
                   #=>                       #=>                       #=>
end

fun_with_ids