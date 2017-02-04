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