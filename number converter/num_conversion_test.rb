require 'minitest/autorun'
require_relative 'num_conversion.rb'

class Num_Con_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end
	def test_70_key_and_value
		num = 70
		assert_equal("Seventy", num_conv(num))
	end
	def test_165_key_and_value
		num = 165
		assert_equal("One Hundred Sixty Five", num_conv(num))
	end
	def test_1003_key_and_value
		num = 1003
		assert_equal("One Thousand Three", num_conv(num))
	end
	def test_1999_key_and_value
		num = 1999
		assert_equal("One Thousand Nine Hundred Ninety Nine", num_conv(num))
	end
end
