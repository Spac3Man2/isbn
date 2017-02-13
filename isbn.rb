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
def check_for_symbols(symbol_check)
    symbol_check2 = symbol_check.split("")
    refreshed = []	
    symbol_check2.each do |filter|
     
     if filter == "0" || filter == "1" ||
        filter == "2" || filter == "3" ||
    	filter == "4" || filter == "5" ||
    	filter == "6" || filter == "7" ||
    	filter == "8" || filter == "9" ||
    	filter == "x" || filter == "X"
	    refreshed.push(filter) 
        end   
    end
    refreshed.length == symbol_check2.length
end	

# def check_x(letter_x)
# 	if letter_x.upcase.include?("X")
# 		 letter_x.upcase.index("X") != letter_x[-1]
#       false
#     else
#       true
# 	end
# end

	def check_x(letter_x)
		letter_x = letter_x.split("")
		if 
		   letter_x[-1] == "x" || letter_x[-1] == "X"
		   # letter_x[09] = "10"
			true
		else
			false
		end
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

  (sum %11).to_s

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

def valid_isbn?(number_string)
	no_spaces_no_dashes = remove_spaces_dashes(number_string)
    
    if no_spaces_no_dashes.length == 10 && check_for_symbols(no_spaces_no_dashes) 
              	# no_spaces_no_dashes[-1]

       if no_spaces_no_dashes[-1].upcase == "X" 
       return check_sum(no_spaces_no_dashes) == "10"	
      
       end
       check_sum(no_spaces_no_dashes) == no_spaces_no_dashes[-1]

    elsif
       no_spaces_no_dashes.length == 13 && check_for_symbols(no_spaces_no_dashes)
       calculate_checksum(no_spaces_no_dashes) == no_spaces_no_dashes[-1]
    else 
       return false
    end

#def invalid_isbn?          
  
end	