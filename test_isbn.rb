
require "minitest/autorun"
require_relative "isbn.rb"

class Test_isbn <Minitest::Test

  def test_isbn_0471958697
	assert_equal(7, check_sum("0471958697"))
  end	

  def test_isbn_0321146530
    assert_equal("0321146530", remove_spaces_dashes("0-321-14653-0"))
  end
end