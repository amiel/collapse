require 'test_helper'

class CollapseTest < Test::Unit::TestCase
	def setup
		@a = {
			:an_array => %w(foo bar baz),
			:an_element => 'a element',
			:another_element => 'an a element',
			:b => {
  			:an_array => %w(foo bat bat_country),
  			:an_element => 'b element',
  			:element_another => 'a b element',
			}
		}
	end
	
	
	def test_collapse
		@a.collapse! :b
		should = {
			:an_array => %w(foo bar baz bat bat_country),
			:an_element => 'b element',
			:another_element => 'an a element',
			:element_another => 'a b element',			
		}
		assert_equal should, @a
	end
end