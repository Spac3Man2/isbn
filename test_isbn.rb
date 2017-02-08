
require "minitest/autorun"
require_relative "isbn.rb"

class Test_isbn <Minitest::Test

  def test_isbn_0471958697
	assert_equal(7, check_sum("0471958697"))
  end	

  def test_isbn_0321146530
    assert_equal("0321146530", remove_spaces_dashes("0-321-14653-0"))
  end

  def test_isbn_877195869x
  	assert_equal(10, check_sum("877195869x"))
  end
  
  def test_if_11_numbers_return_false
  	assert_equal(false, check_ISBN10?("93658275897"))
  end

  def test_13_numbers_9780470059029
    assert_equal(9, calculate_checksum("9780470059029"))
  end

  def  
end
