
require "minitest/autorun"
require_relative "isbn.rb"

class Test_isbn <Minitest::Test

  def test_isbn_0471958697
	assert_equal(7, check_sum("0471958697"))
  end	
end