def remove_spaces_dashes(num)

	formatted_number = "" 

	num.each_char do |letter|

		if letter != " " && letter != "-"

		   formatted_number += letter

        # if letter == "x" || letter =="X"



	    end

	end

	formatted_number

end			

def check_ISBN10?(isbn) 

  return false if isbn.size !=10

  sum = isbn[0..-2] 

print sum
return sum
end  



def check_sum(isbn)

 isbn = check_ISBN10?(isbn)

 sum = 0 

  index = 1	

  isbn.each_char do |number|

  sum += (number.to_i * index)

  index +=1

  end

 sum %11

end

def calculate_checksum(num)

	sum = 0

	index = 1

	alternating_multiplier = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3]

	num =  num.chop

	if num.length == 12

		index = 0

		num.each_char do |number|

			sum += (number.to_i * alternating_multiplier[index])

			index += 1
		end

		return ((10 - (sum % 10)) % 10).to_s

    end
end    