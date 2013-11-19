# find all numbers divisible by 3  less than 1000 and save in an array
# find all numbers divisible by 5 less than 1000 and save in an array.
# flatten the two arrays.

array1 = *(1...1000)
arraydiv3 = []

array1.each do |number|
 if number % 3 == 0
    arraydiv3 << number
  end
end

arraydiv5 = []
array1.each do |number|
 if number % 5 == 0
    arraydiv5 << number
  end
end

arraydivfinal
arraydiv5
arrayfinal = [arraydiv3, arraydiv5]
arrayfinal.flatten.uniq

# add all the numbers in array3
array3.inject{|sum,x| sum + x }

