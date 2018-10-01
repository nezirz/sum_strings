require "test_helper"

class SumStringsTest < Test::Unit::TestCase
    

    def test_hours_addition
        array_of_hours = ["23:23","01:01"]
        assert_equal "24:24", array_of_hours.sum_strings(':') 
    end
    def test_nil_array
        nil_array = []
        assert_equal nil, nil_array.sum_strings(':') 
    end
    def test_split_char
        array_of_hours = ["23/23","2/02"]
        assert_equal "25/25", array_of_hours.sum_strings('/') 
    end
    def test_no_split_char
        array_of_hours = ["23:23","2:02"]
        assert_equal nil, array_of_hours.sum_strings(nil) 
    end
end