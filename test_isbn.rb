
require "minitest/autorun"
require_relative "isbn.rb"

class Test_isbn <Minitest::Test

  def test_isbn_0471958697
	assert_equal("7", check_sum("0471958697"))
  end	

  def test_isbn_0321146530
    assert_equal("0321146530", remove_spaces_dashes("0-321-14653-0"))
  end

  def test_isbn_877195869x
  	assert_equal("10", check_sum("877195869X"))
  end
  
  def test_if_11_numbers_return_false
  	assert_equal(false, check_ISBN10?("93658275897"))
  end

  def test_13_numbers_9780470059029
    assert_equal("9", calculate_checksum("9780470059029"))
  end

def test_random_stuff
	assert_equal(false, check_for_symbols("&^86793"))
    end

def test_if_letter_returns_true
	assert_equal(true, check_x("98763X"))
    end

def test_if_letter_X_returns_false
    assert_equal(false, check_x("563X977"))
    end

def test_if_letter_x_returns_true      
    assert_equal(true, check_x("563888977x"))  
    end
def test_if_isbn_13_and_10_pass_together
    assert_equal(true, valid_isbn?("978-0-13-149505-0"))  
    end

def test_invalid_13
    assert_equal(false, valid_isbn?("978-0-13-6729-56-0"))  
    end

def test_invalid_13_with_X
    assert_equal(false, valid_isbn?("978-0-13-6729-56-X"))  
    end 

def test_if_isbn_13_and_10_pass
    assert_equal(false, valid_isbn?("978-$-13-149505-0"))  
    end

	# def test_valid_10_digit_isbn
	#     assert_equal(true, valid_isbn?("0321146530")) 
 #    end  

def test_valid_10_digit_isbn767
    assert_equal(true, valid_isbn?("0-321 14 6530")) 
    end  
def test_valid_10_digit_isbn_x
    assert_equal(true, valid_isbn?("877195869X")) 
    end  
    def test_valid_10_digit_isbn_x_1
    assert_equal(false, valid_isbn?("x77195869X")) 
    end                  
end